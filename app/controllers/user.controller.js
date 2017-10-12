'use strict';

var config = require('../config'),
    db = require('../services/database'),
    User = require('../models/user');

// The user controller.
var UserController = {

    //Get all users
    getAllUsers(req, res) {
        User.findAll({ raw: true }).then(function(users) {
            if (users) {
                res.json(users);
            } else {
                res.send(401, "User not found");
            }
        }, function(error) {
            res.send("User not found");
        });
    },

    //Get certain user
    getUser(req, res, next) {

        User.find({
            where: {
                'id': req.params.id
            }
        }).then(function(user) {
            if (user) {
                res.json(user);
            } else {
                res.send(401, "User not found");
            }
        }, function(error) {
            res.send("User not found");
        });
    },

    // add new users
    addUser(req, res) {
        if (!req.body.username || !req.body.password) {
            res.json({ message: 'Please provide a username and a password.' });
        } else {
            db.sync().then(function() {
                var newUser = {
                    username: req.body.username,
                    password: req.body.password,
                    role: req.body.role,
                    name: req.body.name,
                    email: req.body.email,
                    picture: req.body.picture
                };

                return User.create(newUser).then(function() {
                    res.status(201).json({ message: 'Username created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateUser(req, res) {

        const id = req.params.id;
        const user = req.body;

        return User.update(user, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'User updated!' });
                } else {
                    res.send(401, "User not found");
                }
            }, function(error) {
                res.send("User not found");
            });
    },

    deleteUser(req, res) {
        User.destroy({
            where: {
                id: req.params.id
            }
        }).then(function(success) {
            if (success) {
                res.json({ message: 'User deleted!' });
            } else {
                res.send(401, "User not found");
            }
        }, function(error) {
            res.send("User not found");
        });
    }
};
module.exports = UserController;