'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Project = require('../models/project');

// The project controller.
var ProjectController = {

    //Get all projects
    getAllProjects(req, res) {
        Project.findAll({ raw: true }).then(function(project) {
            if (project) {
                res.json(project);
            } else {
                res.send(401, "project not found");
            }
        }, function(error) {
            res.send("project not found");
        });
    },

    //Get certain project
    getProject(req, res, next) {

        Project.find({
            where: {
                'id': req.params.id
            }
        }).then(function(project) {
            if (project) {
                res.json(project);
            } else {
                res.send(401, "project not found");
            }
        }, function(error) {
            res.send("project not found");
        });
    },

    //Get latest project
    getProjectLast(req, res, next) {

        Project.findAll({
            limit: 1,
            where: {
                // No need yet
            },
            order: [
                ['createdAt', 'DESC']
            ]
        }).then(function(project) {
            if (project) {
                res.json(project);
            } else {
                res.send(401, "project not found");
            }
        }, function(error) {
            res.send("project not found");
        });
    },


    // add new projects
    addProject(req, res) {
        if (!req.body.name) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newproject = {
                    name: req.body.name,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    client: req.body.client,
                    mapLatitude: req.body.mapLatitude,
                    mapLongitude: req.body.mapLongitude,
                    tags: req.body.tags
                };

                return Project.create(newproject).then(function() {
                    res.status(201).json({ message: 'New project created!' });
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
        const project = req.body;

        return Project.update(project, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'project updated!' });
                } else {
                    res.send(401, "project not found");
                }
            }, function(error) {
                res.send("project not found");
            });
    },

    deleteProject(req, res) {
        Project.destroy({
            where: {
                id: req.params['id']
            }
        }).then(function(project) {
            var data = {
                error: "false",
                message: "Deleted project successfully",
                data: project
            };

            res.send(data);
        });
    }
};
module.exports = ProjectController;