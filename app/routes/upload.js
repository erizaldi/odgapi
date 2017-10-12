var express = require('express');
var router = express.Router();
var multer = require('multer');

var storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'public/assets/images/')
    },
    filename: function(req, file, cb) {
        //  cb(null, file.fieldname + '-' + Date.now() + '.jpg')
        cb(null, file.fieldname + '-' + file.originalname)
    }
});

var upload = multer({ storage: storage }).single('odg');


router.post('/', function(req, res) {
    upload(req, res, function(err) {
        if (err) {
            // An error occurred when uploading
        }
        res.json({
            filename: req.file.filename
        });

        // Everything went fine
    })
});


module.exports = router;