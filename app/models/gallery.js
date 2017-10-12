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

    description: {
        type: Sequelize.STRING,
        allowNull: false
    },
    shortDescription: {
        type: Sequelize.STRING,
        allowNull: false
    },

    thumbnail: {
        type: Sequelize.STRING,
        allowNull: false
    },

    picture: {
        type: Sequelize.STRING,
        allowNull: false
    },

    project: {
        type: Sequelize.INTEGER,
        allowNull: true
    }
};

// 3: Define the User model.
var GalleryModel = db.define('gallery', modelDefinition);


module.exports = GalleryModel;