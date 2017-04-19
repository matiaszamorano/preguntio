package com.preguntio.controller;

import com.preguntio.repository.ColeccionRepository;
import com.preguntio.repository.PreguntaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private ColeccionRepository coleccionRepository;

    @Autowired
    private PreguntaRepository preguntaRepository;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("colecciones", coleccionRepository.findAll());
        return "home";
    }

    @GetMapping("/preguntas")
    public String todas(Model model) {
        model.addAttribute("colecciones", coleccionRepository.findAll());
        return "preguntas";
    }

    @GetMapping("/login.html")
    public String login() {
        return "login";
    }

}
