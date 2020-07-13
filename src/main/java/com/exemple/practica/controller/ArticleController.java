package com.exemple.practica.controller;

import com.exemple.practica.domain.Message;
import com.exemple.practica.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/message")
public class ArticleController {

    @Autowired
    private MessageRepo messageRepo;

    @GetMapping
    public String messageList(Model model){
        model.addAttribute("messages", messageRepo.findAll(Sort.by(Sort.Direction.DESC, "id")));
        return "messageList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{message}")
    public String messageEdit(@PathVariable Message message, Model model){
        model.addAttribute("message", message);
        return "messageEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String messageSave(
            @RequestParam("messageId") Message message,
            @RequestParam String name,
            @RequestParam String text
    ){
        DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
        Date dateobj = new Date();
        message.setDate(dateobj);
        message.setName(name);
        message.setText(text);
        return "redirect:/message";
    }

    @PostMapping("delete")
    public String messageDelete(
            @RequestParam("messageId") Message message
    ){
        messageRepo.delete(message);
        return "redirect:/message";
    }
}
