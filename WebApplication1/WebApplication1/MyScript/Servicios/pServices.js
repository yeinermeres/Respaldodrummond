﻿
app.service("ConfigService", function ($http) {

    var uri = "http://localhost:49372";

    this.get = function (id) {
        var req = $http.get(uri + '/api/Config/' + id);
        return req;
    };

    
    this.getAllProc = function () {
        var req = $http.get(uri + '/api/Config/pronceso');
        return req;
    };

    this.getAll = function () {
        var req = $http.get(uri + '/api/Config');
        return req;
    };

    this.post = function (configuracion) {
        var req = $http.post(uri + '/api/Config', configuracion);
        return req;
    };

    this.put = function (id, Config) {
        var request = $http({
            method: "put",
            url: uri + '/api/Config/' + id,
            data: Config
        });
        return request;
    };

    this.delete = function (id) {
        var request = $http({
            method: "delete",
            url: uri + '/api/Config/' + id,
            data: id
        });
        return request;
    };
});


app.service("PromanagerService", function ($http) {

    var uri = "http://localhost:49372";

    this.get = function (id) {
        var req = $http.get(uri + '/api/ProjManager/' + id);
        return req;
    };

    this.getAll = function () {
        var req = $http.get(uri + '/api/ProjManager');
        return req;
    };

    this.post = function (promanager) {
        var req = $http.post(uri + '/api/ProjManager', promanager);
        return req;
    };

    this.put = function (id, promanager) {
        var request = $http({
            method: "put",
            url: uri + '/api/ProjManager/' + id,
            data: promanager
        });
        return request;
    };

    this.delete = function (id) {
        var request = $http({
            method: "delete",
            url: uri + '/api/ProjManager/' + id,
            data: id
        });
        return request;
    };

});


app.service("AmparosService", function ($http) {

    var uri = "http://localhost:49372";

    this.getALL = function () {
        var req = $http.get(uri + '/api/Amparos/');
        return req;
    };

    this.post = function (amparos) {
        var req = $http.post(uri + '/api/Amparos', amparos);
        return req;
    };
});


app.service("AseguradoraService", function ($http) {

    var uri = "http://localhost:49372";

    this.getALL = function () {
        var req = $http.get(uri + '/api/Aseguradoras/');
        return req;
    };

    this.post = function (aseguradora) {
        var req = $http.post(uri + '/api/Aseguradoras', aseguradora);
        return req;
    };
});


app.service("ProyectoServices", function ($http) {

    var uri = "http://localhost:49372";

    this.getAllConfig = function () {
        var req = $http.get(uri + '/api/Config/All');
        return req;
    };

    this.getAllManager = function () {
        var req = $http.get(uri + '/api/ProjManager');
        return req;
    };


    this.get = function (id) {
        var req = $http.get(uri + '/api/Proyec/' + id);
        return req;
    };

    this.getAll = function () {
        var req = $http.get(uri + '/api/Proyec');
        return req;
    };

    this.post = function (proyecto) {
        var req = $http.post(uri + '/api/Proyec', proyecto);
        return req;
    };

    this.delete = function (id) {
        var request = $http({
            method: "delete",
            url: uri + '/api/Proyec/' + id,
            data: id
        });
        return request;
    };
});


app.service("ProcompetitivoServices", function ($http) {

    var uri = "http://localhost:49372";


    this.getAllproyectos = function () {
        var req = $http.get(uri + '/api/Proyec');
        return req;
    };

    this.getprocesoAP = function () {
        var req = $http.get(uri + '/api/Procompetitivo/Aprobados');
        return req;
    };

    this.getArchivos = function (id) {
        var req = $http.get(uri + '/api/Procompetitivo/Archivos/' + id);
        return req;
    };

    this.getAll = function () {
        var req = $http.get(uri + '/api/Procompetitivo');
        return req;
    };

    this.getAllAspirantes = function () {
        var req = $http.get(uri + '/api/aspirantes');
        return req;
    };

    this.post = function (proceso) {
        var req = $http.post(uri + '/api/Procompetitivo', proceso);
        return req;
    };

    this.delete = function (id) {
        var request = $http({
            method: "delete",
            url: uri + '/api/Procompetitivo/' + id,
            data: id
        });
        return request;
    };

    this.get = function (id) {
        var req = $http.get(uri + '/api/Procompetitivo/' + id);
        return req;
    };

    this.relacion = function (relacion) {
        var req = $http.post(uri + '/api/aspiranteproceso', relacion);
        return req;
    };


});

app.service("AspiranteServices", function ($http) {

    var uri = "http://localhost:49372";


    this.getAllproyectos = function () {
        var req = $http.get(uri + '/api/aspirantes');
        return req;
    };

    this.getAll = function () {
        var req = $http.get(uri + '/api/aspirantes');
        return req;
    };

    this.post = function (aspirantes) {
        var req = $http.post(uri + '/api/aspirantes', aspirantes);
        return req;
    };

    this.delete = function (id) {
        var request = $http({
            method: "delete",
            url: uri + '/api/aspirantes/' + id,
            data: id
        });
        return request;
    };

    this.relacion = function (relacion) {
        var req = $http.post(uri + '/api/aspiranteproceso', relacion);
        return req;
    };
});

app.service("OfertamercantilServices", function ($http) {

    var uri = "http://localhost:49372";


    this.post = function (ofm) {
        var req = $http.post(uri + '/api/Ofertamercantil', ofm);
        return req;
    };

    this.postpl = function (pl) {
        var req = $http.post(uri + '/api/Polizas/',pl);
        return req;
    };

    this.getAll = function (id) {
        var req = $http.get(uri + '/api/Ofertamercantil/');
        return req;
    };

    this.getAllorder = function (id) {
        var req = $http.get(uri + '/api/Ordercompra/' + id);
        return req;
    };

});