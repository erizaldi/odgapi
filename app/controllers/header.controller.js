'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Header = require('../models/header');

// The header controller.
var HeaderController = {

    //Get all headers
    getAllHeaders(req, res) {
        Header.findAll({ raw: true }).then(function(header) {
            if (header) {
                res.json(header);
            } else {
                res.send(401, "header not found");
            }
        }, function(error) {
            res.send("header not found");
        });
    },

    //Get certain header
    getHeader(req, res, next) {

        Header.find({
            where: {
                'id': req.params.id
            }
        }).then(function(header) {
            if (header) {
                res.json(header);
            } else {
                res.send(401, "header not found");
            }
        }, function(error) {
            res.send("header not found");
        });
    },

    // add new headers
    addHeader(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newheader = {
                    title: req.body.title,
                    description: req.body.description,
                    picture: req.body.picture
                };

                return Header.create(newheader).then(function() {
                    res.status(201).json({ message: 'New header created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update header
    updateHeader(req, res) {

        const id = req.params.id;
        const header = req.body;

        return Header.update(header, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'header updated!' });
                } else {
                    res.send(401, "header not found");
                }
            }, function(error) {
                res.send("header not found");
            });
    },

    deleteHeader(req, res) {
        Header.destroy({
            where: {
                id: req.params['id']
            }
        }).then(function(header) {
            var data = {
                error: "false",
                message: "Deleted header successfully",
                data: header
            };

            res.send(data);
        });
    }
};
module.exports = HeaderController;