package com.preguntio.config;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource datasource;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring()
                .antMatchers("/css/**")
                .antMatchers("/js/**")
                .antMatchers("/images/**")
                .antMatchers("/fonts/**")
                .antMatchers("/jodd-bundle/**")
                .antMatchers("/**/favicon.ico");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();
        http.rememberMe().key("preguntio-remember-me").tokenValiditySeconds(2592000); //30 dias
        http.formLogin().loginPage("/login.html").loginProcessingUrl("/login");

        http.authorizeRequests()
                .antMatchers("/redirecciones").permitAll()
                .antMatchers("/login").permitAll()
                .antMatchers("/login.html").permitAll()
                .antMatchers("/avisoNavegadoresSoportados.html").permitAll()
                .antMatchers("/api/registrar").permitAll()
                .antMatchers("/api/registrar/").permitAll()
                .antMatchers("/personas/**/imagen").permitAll()
                .antMatchers("/").authenticated()
                .antMatchers("/**/*.html").authenticated()
                .antMatchers("/**/*.pdf").authenticated()
                .antMatchers("/**/*.xls").authenticated()
                .antMatchers("/personas/**").authenticated()
                .antMatchers("/admin/*.html").hasAnyRole("ADMIN", "ADMIN_EMPRESA")
                .antMatchers("/api/admin/**").hasAnyRole("ADMIN", "ADMIN_EMPRESA")
                .antMatchers("/api/**").authenticated()
                .anyRequest().denyAll();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource(datasource)
                .usersByUsernameQuery("select username, password, enabled from persona where username = ?")
                .authoritiesByUsernameQuery("select u.username, r.rol from persona u, rol r where u.id = r.id_persona and u.username = ?")
                .passwordEncoder(bCryptPasswordEncoder);
    }

}
