package com.exemple.practica.controller;

import com.exemple.practica.domain.Message;
import com.exemple.practica.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

    @Autowired
    private MessageRepo messageRepo;
    
    @GetMapping("/")
    public String greeting() {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model){
        Iterable<Message> messages = messageRepo.findAll(Sort.by(Sort.Direction.DESC, "id"));

        if (filter != null && !filter.isEmpty()) {
            messages = messageRepo.findByNameContaining(filter.toUpperCase(), (Sort.by(Sort.Direction.DESC, "id")));

        }else {
            messages = messageRepo.findAll(Sort.by(Sort.Direction.DESC, "id"));
        }

        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);
        return "main";
    }

    @GetMapping("/yourbody")
    public String yourbody() {return "yourbody";}
}
