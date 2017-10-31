'use strict';

var router = require('express').Router();
var config = require('../config'),
    allowOnly = require('../services/routesHelper').allowOnly,
    AuthController = require('../controllers/authController'),
    UserController = require('../controllers/user.controller'),
    PostController = require('../controllers/post.controller'),
    ClientController = require('../controllers/client.controller'),
    MarketController = require('../controllers/market.controller'),
    ServiceController = require('../controllers/service.controller'),
    GalleryController = require('../controllers/gallery.controller'),
    HeaderController = require('../controllers/header.controller'),
    ProjectController = require('../controllers/project.controller'),
    GalleryController = require('../controllers/gallery.controller'),
    CareerController = require('../controllers/career.controller'),
    ArticleController = require('../controllers/article.controller'),
    ManagementController = require('../controllers/management.controller'),
    QuoteController = require('../controllers/quote.controller'),


    AdminController = require('../controllers/adminController');


var APIRoutes = function(passport) {


    // Authenticate Routes
    router.post('/authenticate', AuthController.authenticateUser);



    // Admin Routes.
    router.get('/profile', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, UserController.index));
    router.get('/admin', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, AdminController.index));


    // User Routes
    router.post('/users', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.Admin, UserController.addUser));
    router.get('/users', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, UserController.getAllUsers));
    router.get('/users/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, UserController.getUser));
    router.put('/users/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, UserController.updateUser));
    router.delete('/users/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, UserController.deleteUser));

    //Post Routes
    router.post('/posts', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, PostController.addPost));
    router.get('/posts', PostController.getAllPost);
    router.get('/posts/:id', PostController.getPost);
    router.get('/poststype/:id', PostController.getListPost);
    router.put('/posts/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, PostController.updatePost));
    router.delete('/posts/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, PostController.deletePost));

    //Client Routes
    router.post('/clients', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ClientController.addClient));
    router.get('/clients', ClientController.getAllClients);
    router.get('/clients/:id', ClientController.getClient);
    router.get('/clientList/:id', ClientController.getListClients);
    router.put('/clients/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ClientController.updateClient));
    router.delete('/clients/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, ClientController.deleteClient));

    //Market Routes
    router.post('/markets', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, MarketController.addMarket));
    router.get('/markets', MarketController.getAllMarkets);
    router.get('/markets/:id', MarketController.getMarket);
    router.put('/markets/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, MarketController.updateMarket));
    router.delete('/markets/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, MarketController.deleteMarket));


    //Service Routes
    router.post('/services', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ServiceController.addService));
    router.get('/services', ServiceController.getAllServices);
    router.get('/services/:id', ServiceController.getService);
    router.put('/services/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ServiceController.updateService));
    router.delete('/services/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, ServiceController.deleteService));

    //Gallery Routes
    router.post('/galleries', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, GalleryController.addGallery));
    router.get('/galleries', GalleryController.getAllGalleries);
    router.get('/galleries/:id', GalleryController.getGallery);
    router.get('/galleryList/:id', GalleryController.getListGalleries);
    router.put('/galleries/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, GalleryController.updateGallery));
    router.delete('/galleries/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, GalleryController.deleteGallery));

    //Header Routes
    router.post('/headers', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, HeaderController.addHeader));
    router.get('/headers', HeaderController.getAllHeaders);
    router.get('/headers/:id', HeaderController.getHeader);
    router.put('/headers/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, HeaderController.updateHeader));
    router.delete('/headers/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, HeaderController.deleteHeader));

    //Project Routes
    router.post('/projects', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ProjectController.addProject));
    router.get('/projects', ProjectController.getAllProjects);
    router.get('/projects/:id', ProjectController.getProject);
    router.get('/projectListService/:id', ProjectController.getListProjectByService);
    router.get('/projectListClient/:id', ProjectController.getListProjectByClient);
    router.get('/projectLast/:id', ProjectController.getProjectLast);
    router.put('/projects/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ProjectController.updateProject));
    router.delete('/projects/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, ProjectController.deleteProject));


    //Career Routes
    router.post('/careers', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, CareerController.addCareer));
    router.get('/careers', CareerController.getAllCareer);
    router.get('/careers/:id', CareerController.getCareer);
    router.get('/careerstype/:id', CareerController.getListCareer);
    router.put('/careers/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, CareerController.updateCareer));
    router.delete('/careers/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, CareerController.deleteCareer));

    //Article Routes
    router.post('/articles', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ArticleController.addArticle));
    router.get('/articles', ArticleController.getAllArticle);
    router.get('/articles/:id', ArticleController.getArticle);
    router.get('/articlestype/:id', ArticleController.getListArticle);
    router.put('/articles/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ArticleController.updateArticle));
    router.delete('/articles/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, ArticleController.deleteArticle));

    //Management Routes
    router.post('/managements', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ManagementController.addManagement));
    router.get('/managements', ManagementController.getAllManagement);
    router.get('/managements/:id', ManagementController.getManagement);
    router.get('/managementstype/:id', ArticleController.getListArticle);
    router.put('/managements/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, ManagementController.updateManagement));
    router.delete('/managements/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, ManagementController.deleteManagement));

    //Quote Routes
    router.post('/quotes', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, QuoteController.addQuote));
    router.get('/quotes', QuoteController.getAllQuote);
    router.put('/quotes/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, QuoteController.updateQuote));
    router.delete('/quotes/:id', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, QuoteController.deleteQuote));


    // protect public folder (NOT FUNCTION YET -- TO FIX LATER)
    //  router.all('/../public/*', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user));

    // Return value
    return router;
};

module.exports = APIRoutes;