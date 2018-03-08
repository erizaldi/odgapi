//User model

'use strict';
var Sequelize = require('sequelize'),
    bcrypt = require('bcrypt');

var config = require('../config'),
    db = require('../services/database');

// 1: The model schema.
var modelDefinition = {
    namaLengkap: {
        type: Sequelize.STRING,
        allowNull: false
    },

    namaPerusahaan: {
        type: Sequelize.STRING,
        allowNull: true
    },

    email: {
        type: Sequelize.STRING,
        allowNull: false
    },

    message: {
        type: Sequelize.STRING,
        allowNull: false
    },
};

// 3: Define the Email model.
var EmailModel = db.define('email', modelDefinition);
module.exports = EmailModel;