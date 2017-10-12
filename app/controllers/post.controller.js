'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Post = require('../models/post');

// The user controller.
var PostController = {

    //Get all users
    getAllPost(req, res) {
        Post.findAll({ raw: true }).then(function(post) {
            if (post) {
                res.json(post);
            } else {
                res.send(401, "Post not found");
            }
        }, function(error) {
            res.send("Post not found");
        });
    },

    //Get List of filtered Post
    getListPost(req, res) {
        Post.findAll({
            where: {
                'postType': req.params.id
            }
        }).then(function(post) {
            if (post) {
                res.json(post);
            } else {
                res.send(401, "Post not found");
            }
        }, function(error) {
            res.send("Post not found");
        });
    },

    //Get certain user
    getPost(req, res, next) {

        Post.find({
            where: {
                'id': req.params.id
            }
        }).then(function(post) {
            if (post) {
                res.json(post);
            } else {
                res.send(401, "Post not found");
            }
        }, function(error) {
            res.send("Post not found");
        });
    },

    // add new users
    addPost(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newPost = {
                    title: req.body.title,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    tags: req.body.tags,
                    postType: req.body.postType
                };

                return Post.create(newPost).then(function() {
                    res.status(201).json({ message: 'New Post created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updatePost(req, res) {

        const id = req.params.id;
        const post = req.body;

        return Post.update(post, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Post updated!' });
                } else {
                    res.send(401, "Post not found");
                }
            }, function(error) {
                res.send("Post not found");
            });
    },

    deletePost(req, res) {
        console.log('PRE DELETE');
        Post.destroy({
            where: {
                id: req.params.id
            }

        }).then(function(post) {
            var data = {
                error: "false",
                message: "Deleted Post successfully",
                data: post
            };
            console.log('AFTER DELETE');
            res.send(data);
        });
    }
};
module.exports = PostController;