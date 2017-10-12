(function() {
    'use strict';

    angular
        .module('jwtApp')
        .controller('profileController', [
            '$http',
            profileController
        ]);

    function profileController($http) {
        var vm = this;

        vm.message = '';

        $http({ method: 'GET', url: '/api/profile' })
            .then(function(response) {
                if (response && response.data) {
                    vm.message = response.data.message;
                }
            });
    }

})();