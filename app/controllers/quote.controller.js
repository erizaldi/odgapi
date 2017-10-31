'use strict';

var config = require('../config'),
    db = require('../services/database'),
    Quote = require('../models/quote');

// The user controller.
var QuoteController = {

    //Get all users
    getAllQuote(req, res) {
        Quote.findAll({ raw: true }).then(function(quote) {
            if (quote) {
                res.json(quote);
            } else {
                res.send(401, "Quote not found");
            }
        }, function(error) {
            res.send("Quote not found");
        });
    },


    // add new users
    addQuote(req, res) {
        if (!req.body.quoteBy) {
            res.json({ message: 'Please provide a quote By.' });
        } else {
            db.sync().then(function() {
                var newQuote = {
                    quoteBy: req.body.quoteBy,
                    quote: req.body.quote,
                };

                return Quote.create(newQuote).then(function() {
                    res.status(201).json({ message: 'New Quote created!' });
                });

            }).catch(function(error) {
                console.log(error);
                res.status(403).json({ error });
            });
        }
    },

    // FUnction to update user
    updateQuote(req, res) {

        const id = req.params.id;
        const quote = req.body;

        return Quote.update(quote, { where: { id: id } })
            .then(function(success) {
                if (success) {
                    res.json({ message: 'Quote updated!' });
                } else {
                    res.send(401, "Quote not found");
                }
            }, function(error) {
                res.send("Quote not found");
            });
    },

    deleteQuote(req, res) {
        console.log('PRE DELETE');
        Quote.destroy({
            where: {
                id: req.params.id
            }

        }).then(function(quote) {
            var data = {
                error: "false",
                message: "Deleted Quote successfully",
                data: quote
            };
            console.log('AFTER DELETE');
            res.send(data);
        });
    }
};
module.exports = QuoteController;