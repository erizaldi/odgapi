//User model

'use strict';
var Sequelize = require('sequelize'),

    var config = require('../config'),
        db = require('../services/database');


// 1: The model schema.
var modelDefinition = {
    name: {
        type: Sequelize.STRING,
        unique: true,
        allowNull: false
    },

    shortDescription: {
        type: Sequelize.STRING,
        allowNull: false
    },

    description: {
        type: Sequelize.STRING,
        allowNull: false
    },

    picture: {
        type: Sequelize.STRING,
        allowNull: false
    },

    thumbnail: {
        type: Sequelize.STRING,
        allowNull: false
    },

    tags: {
        type: Sequelize.STRING,
        allowNull: true
    }
};

// 3: Define the User model.
var MarketModel = db.define('market', modelDefinition);

module.exports = MarketModel;