preguntio.ui.home = (function () {

    function init() {
        $(".pr-borrar-pregunta").click(function () {
            var $this = $(this);
            var id = $this.data("id");
            preguntio.service.preguntas.eliminar(id)
                    .done(function () {
                        $this.closest("tr").slideUp(400);
                    });
            return false;
        });

        $("#formNuevaColeccion").submit(function () {
            var coleccion = preguntio.ui.convertirEnJsonDataDeForm($(this));
            console.log(coleccion);
            preguntio.service.post("http://localhost:8080/api/colecciones", coleccion).
                    done(function () {
                        location.reload()
                    }).
                    fail(function (error) {
                        console.log(error)
                    });

            ;
            return false;
        });
    }


    return {
        init: init
    };
})();


$(document).ready(function () {
    preguntio.ui.home.init();
});
