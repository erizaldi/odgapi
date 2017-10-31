//User model

'use strict';

var Sequelize = require('sequelize'),
    bcrypt = require('bcrypt');

var config = require('../config'),
    db = require('../services/database');


// 1: The model schema.
var modelDefinition = {
    quoteBy: {
        type: Sequelize.STRING,
        unique: true,
        allowNull: false
    },

    quote: {
        type: Sequelize.STRING,
        allowNull: false
    },


};


// 3: Define the User model.
var QuoteModel = db.define('quote', modelDefinition);


module.exports = QuoteModel;