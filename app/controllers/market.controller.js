'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Market = require('../models/market');

// The user controller.
var MarketController = {

    //Get all users
    getAllMarkets(req, res) {
        Market.findAll({ raw: true }).then(function(market) {
            if (market) {
                res.json(market);
            } else {
                res.send(401, "Market not found");
            }
        }, function(error) {
            res.send("Market not found");
        });
    },

    //Get certain user
    getMarket(req, res, next) {

        Market.find({
            where: {
                'id': req.params.id
            }
        }).then(function(market) {
            if (market) {
                res.json(market);
            } else {
                res.send(401, "Market not found");
            }
        }, function(error) {
            res.send("Market not found");
        });
    },

    // add new users
    addMarket(req, res) {
        if (!req.body.name) {
            res.json({ message: 'Please provide a title.' });
        } else {
            db.sync().then(function() {
                var newMarket = {
                    name: req.body.name,
                    shortDescription: req.body.shortDescription,
                    description: req.body.description,
                    picture: req.body.picture,
                    thumbnail: req.body.thumbnail,
                    tags: req.body.tags
                };

                return Market.create(newMarket).then(function() {
                    res.status(201).json({ message: 'New Market created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateMarket(req, res) {

        const id = req.params.id;
        const market = req.body;

        return Market.update(market, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Market updated!' });
                } else {
                    res.send(401, "Market not found");
                }
            }, function(error) {
                res.send("Market not found");
            });
    },

    deleteMarket(req, res) {
        User.destroy({
            where: {
                id: req.params['id']
            }
        }).then(function(market) {
            var data = {
                error: "false",
                message: "Deleted Market successfully",
                data: Market
            };

            res.send(data);
        });
    }
};
module.exports = MarketController;