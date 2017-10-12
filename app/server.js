'use strict';

// NPM dependencies.
var express = require('express'),
    bodyParser = require('body-parser'),
    morgan = require('morgan'),
    sequelize = require('sequelize'),
    passport = require('passport'),
    jwt = require('jsonwebtoken'),
    cors = require('cors'),
    path = require('path');


// App related modules.
var hookJWTStrategy = require('./services/passportStrategy');

// Initializations.
var app = express();
app.use(cors());

// Parse as urlencoded and json.
app.use(bodyParser.json({ limit: "2mb" }));
app.use(bodyParser.urlencoded({ limit: "2mb", extended: true, parameterLimit: 50000 }));


// Hook up the HTTP logger.
app.use(morgan('dev'));

// Hook up Passport.
app.use(passport.initialize());

// Hook the passport JWT strategy.
hookJWTStrategy(passport);

// Set the static files location.
app.use(express.static(__dirname + '/../public'));


// Bundle API routes.
app.use('/api', require('./routes/api')(passport));

var upload = require('./routes/upload');
app.use('/api/upload', upload);
// Catch all route.
// app.get('*', function(req, res) {
//     res.sendFile(path.join(__dirname + '/../public/app/views/index.html'));
// });
//create a cors middleware

// Home route.
app.get('/', function(req, res) {
    res.send('<h4>Welcome to ODG Web API!</h4>');
});

// Start the server.
app.listen('8080', function() {
    console.log('Welcome to ODG API');
});