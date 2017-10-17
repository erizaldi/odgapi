'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Service = require('../models/service');

// The user controller.
var ServiceController = {

    //Get all users
    getAllServices(req, res) {
        Service.findAll({ raw: true }).then(function(service) {
            if (service) {
                res.json(service);
            } else {
                res.send(401, "Service not found");
            }
        }, function(error) {
            res.send("Service not found");
        });
    },

    //Get List of filtered Post
    getListService(req, res) {

        Post.findAll({
            where: {
                'postType': req.params.filter
            }
        }, function(error) {
            res.send("Post not found");
        });
    },

    //Get certain user
    getService(req, res, next) {

        Service.find({
            where: {
                'id': req.params.id
            }
        }).then(function(service) {
            if (service) {
                res.json(service);
            } else {
                res.send(401, "Service not found");
            }
        }, function(error) {
            res.send("Service not found");
        });
    },

    // add new users
    addService(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newService = {
                    title: req.body.title,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    serviceType: req.body.serviceType,
                    tags: req.body.tags
                };

                return Service.create(newService).then(function() {
                    res.status(201).json({ message: 'New Service created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update project
    updateProject(req, res) {

        const id = req.params.id;
        const data = req.body;

        return Service.update(data, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Service updated!' });
                } else {
                    res.send(401, "Service not found");
                }
            }, function(error) {
                res.send("Service not found");
            });
    },

    deleteService(req, res) {
        User.destroy({
            where: {
                id: req.params['id']
            }
        }).then(function(service) {
            var data = {
                error: "false",
                message: "Deleted Service successfully",
                data: Service
            };

            res.send(data);
        });
    }
};
module.exports = ServiceController;