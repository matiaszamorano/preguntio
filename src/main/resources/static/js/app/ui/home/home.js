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
            preguntio.service.post(preguntio.service.url() + "colecciones", coleccion).
                    done(function () {
                        location.reload()
                    }).
                    fail(function (error) {
                        console.log(error)
                    });

            ;
            return false;
        });

        $(".alta-categoria").click(function () {
            var idColeccion = $(this).data("id-coleccion");
            $("#altaCategoría form input[name='coleccion']").attr("value", preguntio.service.url() + "colecciones/" + idColeccion);
            $('#altaCategoría').modal();
            return false;
        });

        $(".borrar-coleccion").click(function () {
            var idColeccion = $(this).data("id");
            preguntio.service.eliminar(preguntio.service.url() + "colecciones/" + idColeccion).
                    done(function () {
                        location.reload()
                    }).
                    fail(function (error) {
                        console.log(error)
                    });
            return false;
        });

        $(".borrar-categoria").click(function () {
            var idCategoria = $(this).data("id");
            preguntio.service.eliminar(preguntio.service.url() + "categorias/" + idCategoria).
                    done(function () {
                        location.reload()
                    }).
                    fail(function (error) {
                        console.log(error)
                    });
            return false;
        });

        $("#formNuevaCagoria").submit(function () {
            var categoria = preguntio.ui.convertirEnJsonDataDeForm($(this));
            preguntio.service.post(preguntio.service.url() + "categorias", categoria).
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
