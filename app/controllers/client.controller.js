'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Client = require('../models/client');

// The user controller.
var ClientController = {

    //Get all users
    getAllClients(req, res) {
        Client.findAll({ raw: true }).then(function(client) {
            if (client) {
                res.json(client);
            } else {
                res.send(401, "Client not found");
            }
        }, function(error) {
            res.send("Client not found");
        });
    },

    //Get certain user
    getClient(req, res, next) {

        Client.find({
            where: {
                'id': req.params.id
            }
        }).then(function(client) {
            if (client) {
                res.json(client);
            } else {
                res.send(401, "Client not found");
            }
        }, function(error) {
            res.send("Client not found");
        });
    },

    // add new users
    addClient(req, res) {
        if (!req.body.name) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newClient = {
                    name: req.body.name,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    segment: req.body.segment,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    tags: req.body.tags
                };

                return Client.create(newClient).then(function() {
                    res.status(201).json({ message: 'New Client created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateClient(req, res) {

        const id = req.params.id;
        const client = req.body;

        return Client.update(client, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Client updated!' });
                } else {
                    res.send(401, "Client not found");
                }
            }, function(error) {
                res.send("Client not found");
            });
    },

    deleteClient(req, res) {
        User.destroy({
            where: {
                id: req.params['id']
            }
        }).then(function(client) {
            var data = {
                error: "false",
                message: "Deleted Client successfully",
                data: Client
            };

            res.send(data);
        });
    }
};
module.exports = ClientController;