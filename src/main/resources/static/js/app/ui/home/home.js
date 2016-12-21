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
    }


    return {
        init: init
    };
})();


$(document).ready(function () {
    preguntio.ui.home.init();
});
