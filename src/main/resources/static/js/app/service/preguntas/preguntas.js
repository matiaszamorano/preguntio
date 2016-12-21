preguntio.service.preguntas = (function () {

    function eliminar(idPregunta) {
        var url = preguntio.service.url() + "preguntas/" + idPregunta;
        return preguntio.service.eliminar(url);
    }

    return {
        eliminar: eliminar
    };
})();