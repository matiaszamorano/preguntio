<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="colorful-page-wrapper">
            <div class="center-block">
                <div class="login-block">
                    <form id="login-form" method="POST" action="login">
                        <fieldset>
                            <section>
                                <div class="row">
                                    <label class="label col col-4">Email</label>
                                    <div class="col col-8">
                                        <label class="input"> <i class="icon-append fa fa-user"></i>
                                            <input type="text" id="username" name="username" placeholder="Email">
                                        </label>
                                    </div>
                                </div>
                            </section>
                            <section>
                                <div class="row">
                                    <label class="label col col-4">Contraseña</label>
                                    <div class="col col-8">
                                        <label class="input"> <i class="icon-append fa fa-lock"></i>
                                            <input type="password" id="password" name="password" placeholder="Contraseña">
                                        </label>
                                    </div>
                                </div>
                            </section>
                            <section>
                                <div class="row">
                                    <div class="col col-4"></div>
                                    <div class="col col-8">
                                        <label class="checkbox">
                                            <input type="checkbox" name="remember-me" checked>
                                            <i></i>Recordarme</label>
                                    </div>
                                </div>
                            </section>
                        </fieldset>
                        <footer>
                            <input type="submit" class="btn btn-default" value="Entrar"/>
                        </footer>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
