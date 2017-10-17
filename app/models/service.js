//User model

'use strict';

var Sequelize = require('sequelize'),
    bcrypt = require('bcrypt');

var config = require('../config'),
    db = require('../services/database');


// 1: The model schema.
var modelDefinition = {
    title: {
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

    serviceType: {
        type: Sequelize.STRING, //ENUM("Electrical Service", "Mechanical Service", "Fire Service", "Others Service"),
        allowNull: false
    },

    tags: {
        type: Sequelize.STRING,
        allowNull: true
    }

};


// 3: Define the User model.
var ServiceModel = db.define('service', modelDefinition);


module.exports = ServiceModel;