'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Management = require('../models/management');

// The user controller.
var ManagementController = {

    //Get all users
    getAllManagement(req, res) {
        Management.findAll({ raw: true }).then(function(Management) {
            if (Management) {
                res.json(Management);
            } else {
                res.send(401, "Management not found");
            }
        }, function(error) {
            res.send("Management not found");
        });
    },

    //Get List of filtered Management
    getListManagement(req, res) {
        Management.findAll({
            where: {
                'ManagementType': req.params.id
            }
        }).then(function(Management) {
            if (Management) {
                res.json(Management);
            } else {
                res.send(401, "Management not found");
            }
        }, function(error) {
            res.send("Management not found");
        });
    },

    //Get certain user
    getManagement(req, res, next) {

        Management.find({
            where: {
                'id': req.params.id
            }
        }).then(function(Management) {
            if (Management) {
                res.json(Management);
            } else {
                res.send(401, "Management not found");
            }
        }, function(error) {
            res.send("Management not found");
        });
    },

    // add new users
    addManagement(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newManagement = {
                    name: req.body.name,
                    title: req.body.title,
                    scope: req.body.scope,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    tags: req.body.tags
                };

                return Management.create(newManagement).then(function() {
                    res.status(201).json({ message: 'New Management created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateManagement(req, res) {

        const id = req.params.id;
        const management = req.body;

        return Management.update(management, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Management updated!' });
                } else {
                    res.send(401, "Management not found");
                }
            }, function(error) {
                res.send("Management not found");
            });
    },

    deleteManagement(req, res) {
        console.log('PRE DELETE');
        Management.destroy({
            where: {
                id: req.params.id
            }

        }).then(function(management) {
            var data = {
                error: "false",
                message: "Deleted Management successfully",
                data: management
            };
            console.log('AFTER DELETE');
            res.send(data);
        });
    }
};
module.exports = ManagementController;