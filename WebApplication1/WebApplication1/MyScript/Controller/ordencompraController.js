app.controller('ordencompraController', function ($scope,OfertamercantilServices) {

    $scope.ON = true
    $scope.OFF = false

    $scope.OFM = {};//Objeto de OFM actual
    $scope.OFMS = []//Listado de Objeto OFM 

    $scope.Order = {};//Objeto de OFM actual
    $scope.Orders = []//Listado de Objeto OFM 


    function inicialize() {
        $scope.Order.NO_OFM = "";
        $scope.Order.NUMERO_PO = ";"
    }
    $scope.total = $scope.Cantidad * $scope.Punidad;

    $scope.invoice = {
        items: [{
            qty: 10,
            description: 'item',
            cost: 9.95}]
    };

    $scope.addItem = function() {
        $scope.invoice.items.push({
            qty: 1,
            description: '',
            cost: 0
        });
    },

    $scope.removeItem = function(index) {
        $scope.invoice.items.splice(index, 1);
    },

    $scope.total = function() {
        var total = 0;
        angular.forEach($scope.invoice.items, function(item) {
            total += item.qty * item.cost;
        })

        return total;
    }

    loadRecord();

    function loadRecord() {
        var promiseGet = OfertamercantilServices.getAll(); //The Method Call from service
        promiseGet.then(function (pl) {
            $scope.OFMS = pl.data;
        },
           function (errorPl) {
               console.log('Error al cargar los datos almacenados', errorPl);
       });
    }


    $scope.getOrder = function (id) {
        var promiseGet = OfertamercantilServices.getAllorder(id); //The Method Call from service
        promiseGet.then(function (pl) {
            $scope.Orders = pl.data;
        },
           function (errorPl) {
               console.log('Error al cargar los datos almacenados', errorPl);
           });
    }

    $scope.Atras = function () {
        $scope.ON = true
        $scope.OFF = false
    }


    $scope.detalle = function () {
        $scope.OFM = this.OFM;
        $scope.ON = false
        $scope.OFF = true
        $scope.getOrder($scope.OFM.N_OFM);
        console.log($scope.OFM)
        localStorage.setItem("NO_OFM", $scope.OFM.N_OFM);
    }
    $scope.Modal = function () {
        $scope.Order = this.Order;
        $("#modalprocesos").modal("show");
    }

    $scope.Cargar = function () {
        $scope.Order = this.Order;
        $scope.Order.NUMERO_PO = $scope.Order.NUMERO_PO;
        $scope.Order.NO_OFM = localStorage.getItem("NO_OFM");
        $("#modalprocesos").modal("hide");
    }
});