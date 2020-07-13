package com.exemple.practica.domain;

public class Calculation {

    private Double bmr;
    private Double calorii;
    private Double imc;
    private String text;
    private String requirements;
    private Double scopeCalorii;
    private Double proteins;
    private Double fats;
    private Double carbohydrates;

    public Calculation() {
    }

    public Calculation(Double bmr, Double calorii, Double imc, String text, String requirements) {
        this.bmr = bmr;
        this.calorii = calorii;
        this.imc = imc;
        this.text = text;
        this.requirements = requirements;
    }

    public Calculation(Double bmr, Double calorii, Double imc,
                       String text, String requirements, Double scopeCalorii,
                       Double proteins, Double fats, Double carbohydrates)
    {
        this.bmr = bmr;
        this.calorii = calorii;
        this.imc = imc;
        this.text = text;
        this.requirements = requirements;
        this.scopeCalorii = scopeCalorii;
        this.proteins = proteins;
        this.fats = fats;
        this.carbohydrates = carbohydrates;
    }

    public Double getCalorii() {
        return calorii;
    }

    public void setCalorii(Double calorii) {
        this.calorii = calorii;
    }

    public Double getImc() {
        return imc;
    }

    public void setImc(Double imc) {
        this.imc = imc;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Double getBmr() {
        return bmr;
    }

    public void setBmr(Double bmr) {
        this.bmr = bmr;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public Double getScopeCalorii() {
        return scopeCalorii;
    }

    public void setScopeCalorii(Double scopeCalorii) {
        this.scopeCalorii = scopeCalorii;
    }

    public Double getProteins() {
        return proteins;
    }

    public void setProteins(Double proteins) {
        this.proteins = proteins;
    }

    public Double getFats() {
        return fats;
    }

    public void setFats(Double fats) {
        this.fats = fats;
    }

    public Double getCarbohydrates() {
        return carbohydrates;
    }

    public void setCarbohydrates(Double carbohydrates) {
        this.carbohydrates = carbohydrates;
    }

    public Calculation CalculationFunction(Integer greutatea, Integer inaltimea,
                                           Integer varsta, String sex,
                                           String activiti, String scope,
                                           Integer greutateLose, String proteins,
                                           String fats
    ){
        Calculation calculation = new Calculation(0.0, 0.0, 0.0,
                "####", "####",0.0,
                0.0,0.0,0.0);

        Double resoultCalorii = 0.0;
        Double resoultIMC = 0.0;
        Double resoultMetri = 0.0;
        Double resoultBMR = 0.0;
        Double scopCaloriiCalcualtion = 0.0;
        final Double metri = 0.01;

        if (sex.equals("F")) {
            resoultBMR = (10 * greutatea) + (6.25 * inaltimea) - (5 * varsta) - 161;
        } else {
            resoultBMR = (10 * greutatea) + (6.25 * inaltimea) - (5 * varsta) + 5;
        }

        if (activiti.equals("1")) {
            resoultCalorii = resoultBMR * 1.2;
        } else if (activiti.equals("2")) {
            resoultCalorii = resoultBMR * 1.375;
        } else if (activiti.equals("3")) {
            resoultCalorii = resoultBMR * 1.55;
        } else if (activiti.equals("4")){
            resoultCalorii = resoultBMR * 	1.725;
        }else {
            resoultCalorii = resoultBMR * 	1.9;
        }
        resoultMetri = inaltimea * metri;
        resoultIMC = greutatea/(resoultMetri * resoultMetri);

        if (resoultIMC < 15){
            calculation.setText("Severe thinness");
            calculation.setRequirements("You need to eat more");
        }else if (resoultIMC <= 17){
            calculation.setText("Moderate thinness");
            calculation.setRequirements("You need to eat more");
        }else if (resoultIMC <= 18){
            calculation.setText("Mild thinness");
            calculation.setRequirements("One step to a normal weight");
        }else if (resoultIMC <= 25){
            calculation.setText("Normal");
            calculation.setRequirements("In numbers you are perfect");
        }else if(resoultIMC <= 30){
            calculation.setText("Overweight");
            calculation.setRequirements("It's probably muscle, but I don't think so. So lose weight");
        }else {
            calculation.setText("Obese");
            calculation.setRequirements("I really hope there are muscles, if not, you must lose weight");
        }

        Integer greutateaMod = greutatea;
        if(scope.equals("Lose")){
            if(sex.equals("F")){
                greutateaMod = greutateaMod - greutateLose;
                scopCaloriiCalcualtion = (10 * greutateaMod) + (6.25 * inaltimea) - (5 * varsta) - 161;
            }else{
                greutateaMod = greutateaMod - greutateLose;
                scopCaloriiCalcualtion = (10 * greutateaMod) + (6.25 * inaltimea) - (5 * varsta) + 5;
            }

            if (activiti.equals("1")) {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 1.2;
            } else if (activiti.equals("2")) {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 1.375;
            } else if (activiti.equals("3")) {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 1.55;
            } else if (activiti.equals("4")){
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 	1.725;
            }else {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 	1.9;
            }
            calculation.setScopeCalorii(scopCaloriiCalcualtion);
        }else{
            if(sex.equals("F")){
                greutateaMod = greutateaMod + greutateLose;
                scopCaloriiCalcualtion = (10 * greutateaMod) + (6.25 * inaltimea) - (5 * varsta) - 161;
            }else{
                greutateaMod = greutateaMod + greutateLose;
                scopCaloriiCalcualtion = (10 * greutateaMod) + (6.25 * inaltimea) - (5 * varsta) + 5;
            }

            if (activiti.equals("1")) {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 1.2;
            } else if (activiti.equals("2")) {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 1.375;
            } else if (activiti.equals("3")) {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 1.55;
            } else if (activiti.equals("4")){
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 	1.725;
            }else {
                scopCaloriiCalcualtion = scopCaloriiCalcualtion * 	1.9;
            }
            calculation.setScopeCalorii(scopCaloriiCalcualtion);
        }

        Double proteinPerDay = 0.0;
        if(proteins.equals("Low")){
            proteinPerDay = greutateaMod * 1.5;
        }else if(proteins.equals("Med")){
            proteinPerDay = greutateaMod * 2.0;
        }else if(proteins.equals("High")){
            proteinPerDay = greutateaMod * 2.5;
        }else if(proteins.equals("VeryHigh")){
            proteinPerDay = greutateaMod * 3.0;
        }

        Double fatPerDay = 0.0;
        if(fats.equals("Low")){
            fatPerDay = greutateaMod * 0.6;
        }else if(fats.equals("Med")){
            fatPerDay = greutateaMod * 0.7;
        }else if(fats.equals("High")){
            fatPerDay = greutateaMod * 0.8;
        }else if(fats.equals("VeryHigh")){
            fatPerDay = greutateaMod * 0.9;
        }else if(fats.equals("VeryVeryHigh")){
            fatPerDay = greutateaMod * 1.0;
        }

        Double carbohydratePerDay;
        carbohydratePerDay = resoultCalorii - (proteinPerDay * 4.0) - (fatPerDay * 9.0);
        carbohydratePerDay = carbohydratePerDay / 4.0;

        calculation.setBmr(resoultBMR);
        calculation.setCalorii(resoultCalorii);
        calculation.setImc(resoultIMC);
        calculation.setCarbohydrates(carbohydratePerDay);
        calculation.setFats(fatPerDay);
        calculation.setProteins(proteinPerDay);

        return calculation;
    }

    public Calculation CalculationFunctionSimple(Integer greutatea, Integer inaltimea,
                                                 Integer varsta, String sex,
                                                 String activiti){

        Calculation calculation = new Calculation(0.0, 0.0, 0.0,
                "####", "####");

        Double resoultCalorii = 0.0;
        Double resoultIMC = 0.0;
        Double resoultMetri = 0.0;
        Double resoultBMR = 0.0;
        final Double metri = 0.01;

        if (sex.equals("F")) {
            resoultBMR = (10 * greutatea) + (6.25 * inaltimea) - (5 * varsta) - 161;
        } else {
            resoultBMR = (10 * greutatea) + (6.25 * inaltimea) - (5 * varsta) + 5;
        }

        if (activiti.equals("1")) {
            resoultCalorii = resoultBMR * 1.2;
        } else if (activiti.equals("2")) {
            resoultCalorii = resoultBMR * 1.375;
        } else if (activiti.equals("3")) {
            resoultCalorii = resoultBMR * 1.55;
        } else if (activiti.equals("4")){
            resoultCalorii = resoultBMR * 	1.725;
        }else {
            resoultCalorii = resoultBMR * 	1.9;
        }
        resoultMetri = inaltimea * metri;
        resoultIMC = greutatea/(resoultMetri * resoultMetri);

        if (resoultIMC < 15){
            calculation.setText("Severe thinness");
            calculation.setRequirements("You need to eat more");
        }else if (resoultIMC <= 17){
            calculation.setText("Moderate thinness");
            calculation.setRequirements("You need to eat more");
        }else if (resoultIMC <= 18){
            calculation.setText("Mild thinness");
            calculation.setRequirements("One step to a normal weight");
        }else if (resoultIMC <= 25){
            calculation.setText("Normal");
            calculation.setRequirements("In numbers you are perfect");
        }else if(resoultIMC <= 30){
            calculation.setText("Overweight");
            calculation.setRequirements("It's probably muscle, but I don't think so. So lose weight");
        }else {
            calculation.setText("Obese");
            calculation.setRequirements("I really hope there are muscles, if not, you must lose weight");
        }

        calculation.setBmr(resoultBMR);
        calculation.setCalorii(resoultCalorii);
        calculation.setImc(resoultIMC);

        return calculation;
    }
}
