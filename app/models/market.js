//User model

'use strict';

var Sequelize = require('sequelize'),
    bcrypt = require('bcrypt');

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

// 2: The model options.
var modelOptions = {
    instanceMethods: {
        comparePasswords: comparePasswords
    },
    hooks: {
        beforeValidate: hashPassword
    }
};

// 3: Define the User model.
var ClientModel = db.define('client', modelDefinition, modelOptions);

// Compares two passwords.
function comparePasswords(password, callback) {
    bcrypt.compare(password, this.password, function(error, isMatch) {
        if (error) {
            return callback(error);
        }

        return callback(null, isMatch);
    });
}

// Hashes the password for a user object.
function hashPassword(user) {
    if (user.changed('password')) {
        return bcrypt.hash(user.password, 10).then(function(password) {
            user.password = password;
        });
    }
}

module.exports = ClientModel;