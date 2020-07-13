package com.exemple.practica.controller;

import com.exemple.practica.domain.Calculation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculationController {

    @GetMapping("/calculation")
    public String calculation(Model model){
        model.addAttribute("alert", null);
        model.addAttribute("alertType","");
        model.addAttribute("BMR","####");
        model.addAttribute("calorii","####");
        model.addAttribute("IMC","####");
        model.addAttribute("text","####");
        model.addAttribute("requirements","####");
        model.addAttribute("scope","####");
        model.addAttribute("proteins","####");
        model.addAttribute("fats","####");
        model.addAttribute("carbohydrates","####");
        return "/calculation";
    }

    @PostMapping("/calculation")
    public String calculationPageAdvance(Model model,
                                  @RequestParam(required = false) Integer greutate,
                                  @RequestParam(required = false) Integer inaltime,
                                  @RequestParam(required = false) Integer varsta,
                                  @RequestParam(required = false) String sex,
                                  @RequestParam(required = false) String activiti,
                                  @RequestParam(required = false) String scope,
                                  @RequestParam(required = false) Integer greutateLose,
                                  @RequestParam(required = false) String protein,
                                  @RequestParam(required = false) String fat
    ){
        if (greutate == null || inaltime == null
                || varsta == null || sex == null
                || activiti == null || greutate < 0
                || inaltime < 0 || varsta < 0
                || scope == null || greutateLose == null
                || greutateLose < 0
        ){
            model.addAttribute("alertType","danger");
            model.addAttribute("alert", "Don't forget to fill all the boxes");
            model.addAttribute("calorii","####");
            model.addAttribute("IMC","####");
            model.addAttribute("text","####");
            model.addAttribute("requirements","####");
            model.addAttribute("BMR","####");
            model.addAttribute("scope","####");
            model.addAttribute("proteins","####");
            model.addAttribute("fats","####");
            model.addAttribute("carbohydrates","####");
        }else {
            Calculation calculation = new Calculation(0.0,0.0,0.0,"","",0.0,0.0,0.0,0.0);
            calculation = calculation.CalculationFunction(greutate,inaltime,varsta,sex,activiti,scope,greutateLose,protein,fat);

            model.addAttribute("alert", null);
            model.addAttribute("alertType","");
            model.addAttribute("BMR",calculation.getBmr());
            model.addAttribute("calorii", calculation.getCalorii());
            model.addAttribute("IMC", calculation.getImc());
            model.addAttribute("text", calculation.getText());
            model.addAttribute("requirements", calculation.getRequirements());
            model.addAttribute("scope",calculation.getScopeCalorii());
            model.addAttribute("proteins",calculation.getProteins());
            model.addAttribute("fats",calculation.getFats());
            model.addAttribute("carbohydrates",calculation.getCarbohydrates());
        }

        return "/calculation";
    }

    @GetMapping("/calculationSimple")
    public String calculationAdvance(Model model){

        model.addAttribute("alert", null);
        model.addAttribute("alertType","");
        model.addAttribute("BMR","####");
        model.addAttribute("calorii","####");
        model.addAttribute("IMC","####");
        model.addAttribute("text","####");
        model.addAttribute("requirements","####");

        return "calculationSimple";
    }

    @PostMapping("/calculationSimple")
    public String calculationPageSimple(Model model,
                                         @RequestParam(required = false) Integer greutate,
                                         @RequestParam(required = false) Integer inaltime,
                                         @RequestParam(required = false) Integer varsta,
                                         @RequestParam(required = false) String sex,
                                         @RequestParam(required = false) String activiti
    ){
        if (greutate == null || inaltime == null
                || varsta == null || sex == null
                || activiti == null || greutate < 0
                || inaltime < 0 || varsta < 0
        ){
            model.addAttribute("alertType","danger");
            model.addAttribute("alert", "Don't forget to fill all the boxes");
            model.addAttribute("calorii","####");
            model.addAttribute("IMC","####");
            model.addAttribute("text","####");
            model.addAttribute("requirements","####");
            model.addAttribute("BMR","####");
        }else {
            Calculation calculation = new Calculation(0.0,0.0,0.0,"","");
            calculation = calculation.CalculationFunctionSimple(greutate,inaltime,varsta,sex,activiti);

            model.addAttribute("alert", null);
            model.addAttribute("alertType","");
            model.addAttribute("BMR",calculation.getBmr());
            model.addAttribute("calorii", calculation.getCalorii());
            model.addAttribute("IMC", calculation.getImc());
            model.addAttribute("text", calculation.getText());
            model.addAttribute("requirements", calculation.getRequirements());
        }

        return "calculationSimple";
    }
}
