package com.exemple.practica.controller;

import com.exemple.practica.domain.Message;
import com.exemple.practica.domain.User;
import com.exemple.practica.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@PreAuthorize("hasAuthority('ADMIN') or hasAuthority('PRIVATE')")
public class AddArticleController {

    @Autowired
    private MessageRepo messageRepo;
    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/addArticle")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model){
        Iterable<Message> messages = messageRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            messages = messageRepo.findByNameContaining(filter.toUpperCase(), (Sort.by(Sort.Direction.DESC, "id")));
        }else {
            messages = messageRepo.findAll((Sort.by(Sort.Direction.DESC, "id")));
        }

        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);
        model.addAttribute("alertType", "");
        model.addAttribute("alert","");
        return "addArticle";
    }

    @PostMapping("/addArticle")
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Message message,
            Model model
    ){
        message.setAuthor(user);

        if (message != null && !message.getText().isEmpty() && !message.getName().isEmpty() && message.getText().length() <= 4096) {
            String name = message.getName();
            message.setName(name.toUpperCase());

            DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
            Date dateobj = new Date();
            message.setDate(dateobj);
            messageRepo.save(message);
            model.addAttribute("alert",null);
            model.addAttribute("alertType","");
        }else if(message.getText().length() > 4096){
            model.addAttribute("alertType", "danger");
            model.addAttribute("alert","Text it's to large (max 4096 characters)");
        }else{
            model.addAttribute("alert","Don't forget to fill all the boxes");
            model.addAttribute("alertType", "danger");
        }

        Iterable<Message> messages = messageRepo.findAll((Sort.by(Sort.Direction.DESC, "id")));
        model.addAttribute("messages", messages);

        return "/addArticle";
    }
}
