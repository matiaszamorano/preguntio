<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <c:set var="root" scope="request">${pageContext.request.contextPath}</c:set>
        <c:set var="url">${pageContext.request.requestURL}</c:set>
        <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Preguntio</title>
        <link rel="icon" type="image/x-icon" href="favicon.ico" />

    </head>

    <body>
        <div class="colorful-page-wrapper">
            <div class="center-block">
                <div class="login-block">
                    <form id="login-form" method="POST" action="login">
                        <c:if test="${param.error != null}">
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-times-circle"></i></button>
                                <strong>¡Upa!</strong> El nombre de usuario o la contraseña son incorrectas.
                            </div>
                        </c:if>
                        <fieldset>
                            <section>
                                <div class="row">
                                    <label class="label col col-4">Email</label>
                                    <div class="col col-8">
                                        <label class="input"> <i class="icon-append fa fa-user"></i>
                                            <input type="text" id="email" name="email" placeholder="Email">
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
