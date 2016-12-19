package com.preguntio.config;

import com.preguntio.PreguntioApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

/**
 * Esta es la clase que inicializa la aplicacion web con Spring Boot. Levanta la
 * clase de configuración principal de la aplicación.
 */
public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(PreguntioApplication.class);
    }

}
