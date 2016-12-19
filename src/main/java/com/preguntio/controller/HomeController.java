package com.preguntio.controller;

import com.preguntio.repository.PreguntaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private PreguntaRepository preguntaRepository;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("preguntas", preguntaRepository.findAll());
        return "home";
    }

}
