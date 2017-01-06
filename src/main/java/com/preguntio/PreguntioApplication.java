package com.preguntio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableScheduling
public class PreguntioApplication {

    @Autowired
    private RestTemplate restTemplate;

    public static void main(String[] args) {
        SpringApplication.run(PreguntioApplication.class, args);
    }

    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }

    @Scheduled(cron = "0 0/20 1-23 * * *")
    public void herokuKeepAlive() {
        System.out.println("Control de ejecución " + System.currentTimeMillis());
        restTemplate.getForObject("https://preguntio.herokuapp.com/", String.class);
    }
}
