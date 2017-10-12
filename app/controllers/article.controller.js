'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Article = require('../models/article');

// The user controller.
var ArticleController = {

    //Get all users
    getAllArticle(req, res) {
        Article.findAll({ raw: true }).then(function(article) {
            if (article) {
                res.json(article);
            } else {
                res.send(401, "Article not found");
            }
        }, function(error) {
            res.send("Article not found");
        });
    },

    //Get List of filtered Article
    getListArticle(req, res) {
        Article.findAll({
            where: {
                'ArticleType': req.params.id
            }
        }).then(function(article) {
            if (article) {
                res.json(article);
            } else {
                res.send(401, "Article not found");
            }
        }, function(error) {
            res.send("Article not found");
        });
    },

    //Get certain user
    getArticle(req, res, next) {

        Article.find({
            where: {
                'id': req.params.id
            }
        }).then(function(article) {
            if (article) {
                res.json(article);
            } else {
                res.send(401, "Article not found");
            }
        }, function(error) {
            res.send("Article not found");
        });
    },

    // add new users
    addArticle(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newArticle = {
                    title: req.body.title,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    tags: req.body.tags
                };

                return Article.create(newArticle).then(function() {
                    res.status(201).json({ message: 'New Article created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateArticle(req, res) {

        const id = req.params.id;
        const article = req.body;

        return Article.update(article, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Article updated!' });
                } else {
                    res.send(401, "Article not found");
                }
            }, function(error) {
                res.send("Article not found");
            });
    },

    deleteArticle(req, res) {
        console.log('PRE DELETE');
        Article.destroy({
            where: {
                id: req.params.id
            }

        }).then(function(article) {
            var data = {
                error: "false",
                message: "Deleted Article successfully",
                data: article
            };
            console.log('AFTER DELETE');
            res.send(data);
        });
    }
};
module.exports = ArticleController;