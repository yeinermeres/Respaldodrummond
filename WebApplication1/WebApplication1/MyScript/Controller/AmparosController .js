﻿app.controller('AmparosController', function ($scope, AmparosService) {
    $scope.Amparo = {}; //Objeto Actual
    $scope.Amparos = []; //Listado de Objetos

    var lisAmparos=[];
    var lisaseguradoras=[];
    Inicialize();
    getAmparos();

    function Inicialize() {
        $scope.Amparo = {}; //Objeto Actual
        $scope.Amparo.NOMBRE_AMP = "";
    }


    function getAmparos() {
        var result = AmparosService.getALL();
        result.then(function (dato)
        {
            $scope.Amparos = dato.data;
            console.log($scope.Amparos);

        },
        function (errorpl) {
            console.log(errorpl)
        });
    }


    $scope.Add = function () {
        var amparo = {};
        $("#guaradar").attr("disabled", true);
        amparo.NOMBRE_AMP = $scope.Amparo.NOMBRE_AMP;
        amparo.TIPO_AMP = $scope.Amparo.TIPO_AMP;
        amparo.ESTADO_AMP = 0;

        var result = AmparosService.post(amparo);
        result.then(function () {
            setTimeout(function () {
                toastr.options = {
                    "closeButton": true,
                    "debug": false,
                    "progressBar": false,
                    "preventDuplicates": false,
                    "positionClass": "toast-bottom-full-width",
                    "onclick": null,
                    "showDuration": "400",
                    "hideDuration": "1000",
                    "timeOut": "7000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.success("Se realizado el registro de manera exitosa.", "Notificaciones");

            }, 1100);
            getAmparos();
            $("#guaradar").attr("disabled", false);
            $("#myModal4").modal("hide");
        },
        function (errorpl) {
            console.log(errorpl)
        });


    };

    $scope.Detalle = function () {
        $scope.Amparo = this.Amparo;
        $("#ModalEditar").modal("show");
    }

});