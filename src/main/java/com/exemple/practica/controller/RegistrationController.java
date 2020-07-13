package com.exemple.practica.controller;

import com.exemple.practica.domain.User;
import com.exemple.practica.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model){
        model.addAttribute("alert",null);
        model.addAttribute("alertType","");
        model.addAttribute("messageType","");
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Model model){
        if (user.getUsername().isEmpty() || user.getPassword().isEmpty() || user.getEmail().isEmpty()){
            model.addAttribute("alert","Don't forget to fill all the boxes");
            model.addAttribute("messageType","");
            model.addAttribute("alertType","danger");
            return "registration";
        }else if(user.getPassword() != null && !user.getPassword().equals(user.getPassword2())){
            model.addAttribute("alertType","danger");
            model.addAttribute("messageType","");
            model.addAttribute("alert", "Passwords are different");
            return "registration";
        }else {
            if (!userService.addUser(user)) {
                model.addAttribute("alertType","");
                model.addAttribute("messageType","danger");
                model.addAttribute("message", "User exists!");
                model.addAttribute("alert",null);
                return "registration";
            }
        }

        return "redirect:/login";
    }

    @GetMapping("/activate/{code}")
    public String activate(Model model, @PathVariable String code){

        boolean isActivated = userService.activateUser(code);

        if (isActivated){
            model.addAttribute("messageType","success");
            model.addAttribute("message", "User successfully activated");
        }else {
            model.addAttribute("messageType","danger");
            model.addAttribute("message", "Activation code is note found");
        }

        return "login";
    }
}
