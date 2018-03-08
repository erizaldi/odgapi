'use strict';

var email = require("emailjs/email");
var EmailModel = require('../models/email');

// The user controller.
var MailController = {

    sendMail: function(req, res) {

        var server = email.server.connect({
            user: "webform@odg.co.id",
            password: "webForm!234",
            host: "odg.co.id",
            ssl: true,
            port: 465
        });
        process.env.NODE_TLS_REJECT_UNAUTHORIZED = 0;
        // send the message and get a callback with an error or details of the message that was sent
        server.send({
            text: req.body.message,
            from: req.body.email,
            to: "marketing@ptodg.com, adminpng@ptodg.com, erizaldi@gmail.com",
            subject: "Message from" + req.body.namaLengkap + " - " + req.body.namaPerusahaan + " via website odg.co.id"
        }, function(err, message) {
            if (err)
                console.log(err);
            else
                return res.json({ success: true, msg: 'sent' });
        });
    }
};
module.exports = MailController;