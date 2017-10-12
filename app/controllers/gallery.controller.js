'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Gallery = require('../models/gallery');

// The Gallery controller.
var GalleryController = {

    //Get all Galleries
    getAllGalleries(req, res) {
        Gallery.findAll({ raw: true }).then(function(galleries) {
            if (galleries) {
                res.json(galleries);
            } else {
                res.send(401, "Gallery not found");
            }
        }, function(error) {
            res.send("Gallery not found");
        });
    },

    //Get List of filtered Galleries
    getListGalleries(req, res) {
        Gallery.findAll({
            where: {
                'project': req.params.id
            }
        }).then(function(galleries) {
            if (galleries) {
                res.json(galleries);
            } else {
                res.send(401, "Galleries not found");
            }
        }, function(error) {
            res.send("Galleries not found");
        });
    },


    //Get certain Gallery
    getGallery(req, res, next) {

        Gallery.find({
            where: {
                'id': req.params.id
            }
        }).then(function(gallery) {
            if (gallery) {
                res.json(gallery);
            } else {
                res.send(401, "Gallery not found");
            }
        }, function(error) {
            res.send("Gallery not found");
        });
    },

    // add new Galleries
    addGallery(req, res) {
        if (!req.body.title) {
            res.json({ message: 'Please provide a Galleryname and a password.' });
        } else {
            db.sync().then(function() {
                var newGallery = {
                    title: req.body.title,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    thumbnail: req.body.thumbnail,
                    picture: req.body.picture,
                    project: req.body.project
                };

                return Gallery.create(newGallery).then(function() {
                    res.status(201).json({ message: 'Gallery created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update Gallery
    updateGallery(req, res) {

        const id = req.params.id;
        const gallery = req.body;

        return Gallery.update(gallery, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Gallery updated!' });
                } else {
                    res.send(401, "Gallery not found");
                }
            }, function(error) {
                res.send("Gallery not found");
            });
    },

    deleteGallery(req, res) {
        Gallery.destroy({
            where: {
                id: req.params['id']
            }
        }).then(function(gallery) {
            var data = {
                error: "false",
                message: "Deleted Gallery successfully",
                data: Gallery
            };

            res.send(data);
        });
    }
};
module.exports = GalleryController;