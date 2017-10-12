'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Career = require('../models/career');

// The user controller.
var CareerController = {

    //Get all users
    getAllCareer(req, res) {
        Career.findAll({ raw: true }).then(function(career) {
            if (career) {
                res.json(career);
            } else {
                res.send(401, "career not found");
            }
        }, function(error) {
            res.send("career not found");
        });
    },

    //Get List of filtered career
    getListCareer(req, res) {
        Career.findAll({
            where: {
                'careerType': req.params.id
            }
        }).then(function(career) {
            if (career) {
                res.json(career);
            } else {
                res.send(401, "career not found");
            }
        }, function(error) {
            res.send("career not found");
        });
    },

    //Get certain user
    getCareer(req, res, next) {

        Career.find({
            where: {
                'id': req.params.id
            }
        }).then(function(career) {
            if (career) {
                res.json(career);
            } else {
                res.send(401, "career not found");
            }
        }, function(error) {
            res.send("career not found");
        });
    },

    // add new users
    addCareer(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newcareer = {
                    title: req.body.title,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    tags: req.body.tags,
                };

                return Career.create(newcareer).then(function() {
                    res.status(201).json({ message: 'New career created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateCareer(req, res) {

        const id = req.params.id;
        const career = req.body;

        return Career.update(career, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'career updated!' });
                } else {
                    res.send(401, "career not found");
                }
            }, function(error) {
                res.send("career not found");
            });
    },

    deleteCareer(req, res) {
        console.log('PRE DELETE');
        Career.destroy({
            where: {
                id: req.params.id
            }

        }).then(function(career) {
            var data = {
                error: "false",
                message: "Deleted career successfully",
                data: career
            };
            console.log('AFTER DELETE');
            res.send(data);
        });
    }
};
module.exports = CareerController;