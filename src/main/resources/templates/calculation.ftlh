<#import "parts/common.ftlh" as c>

<@c.page>

    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <div class="list-group">
                    <a class="list-group-item list-group-item-action list-group-item-warning" href="/calculationSimple">Simple Calculation</a>
                    <a class="list-group-item list-group-item-action list-group-item-warning" href="/calculation">Advance Calculation</a>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group mt-5">
        <form method="post" action="/calculation">
            <div class="container">
                <div class="row">
                    <div class="col-4">
                        <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>Your weight</strong></label>
                    </div>
                    <div class="col-4">
                        <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>Your height</strong></label>
                    </div>
                    <div class="col-4">
                        <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>Your  age</strong></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <input type="text" name="greutate" placeholder="Weight(kg)" class="form-control">
                    </div>
                    <div class="col-4">
                        <input type="text" name="inaltime" placeholder="Height(cm)" class="form-control">
                    </div>
                    <div class="col-4">
                        <input type="text" name="varsta" placeholder="Age" class="form-control">
                    </div>
                </div>
            </div>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="form-check">
                            <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>Indicate your gender</strong></label>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="sex" value="F"><test>F</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="sex" value="M"><test>M</test>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>Indicate your degree of activity</strong></label>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="1"><test>Passive lifestyle.</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="2"><test>Light physical activity.</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="3"><test>Enough physical activity.</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="4"><test>High physical activity.</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="5"><test>Very high daily physical activity</test>
                        </div>
                    </div>
                </div>
                <br class="my-5">
                <div class="row">
                    <div class="col-6">
                        <div class="form-check">
                            <label class="form-check-label"  style="font-family: 'Domine', serif;"><strong>Indicate your scope</strong></label>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="scope" value="Lose"><test>Lose weight</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="scope" value="Gain"><test>Gain weight</test>
                        </div>
                    </div>
                    <div class="col-6">
                        <div>
                            <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>How much do you want to lose / gain weight?</strong></label>
                        </div>
                        <input type="text" name="greutateLose" placeholder="Weight(kg)" class="form-control">
                    </div>
                </div>
                <br class="my-5">
                <div class="row">
                    <div class="col-6">
                        <div class="form-check">
                            <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>How much proteins do you want?</strong></label>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="protein" value="Low"><test>1,5g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="protein" value="Med"><test>2.0g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="protein" value="High"><test>2,5g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="protein" value="VeryHigh"><test>3.0g</test>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <label class="form-check-label" for="exampleCheck1" style="font-family: 'Domine', serif;"><strong>How much fats do you want?</strong></label>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="fat" value="Low"><test>0,6g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="fat" value="Med"><test>0,7g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="fat" value="High"><test>0,8g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="fat" value="VeryHigh"><test>0,9g</test>
                            <br>
                            <input type="radio" class="form-check-input" id="exampleCheck1" name="fat" value="VeryVeryHigh"><test>1,0g</test>
                        </div>
                    </div>
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <br>
                <strong class='alert alert-${alertType}' style="color: red">${alert?if_exists}</strong>
            <br>
            <button type="submit" class="btn btn-dark mt-4">Calculate</button>
        </form>
    </div>

    <div class="mb-5">
        <div>
            <p class="m-2"><test1>Basal metabolic rate</test1><b class="mx-2">${BMR}</b><test1>calories</test1></p>
        </div>
        <div>
            <p class="m-2"><test1>Daily calorie requirement</test1><b class="mx-2">${calorii}</b><test1>calories</test1></p>
        </div>
        <div>
            <p class="m-2"><test1>Your body mass index</test1><b class="ml-2">${IMC}</b></p>
        </div>
        <div>
            <p class="m-2"><test1>Result</test1><b class="ml-2">${text}</b></p>
        </div>
        <div>
            <p class="m-2"><test1>Requirements</test1><b class="ml-2">${requirements}</b></p>
        </div>
        <hr>
        <div>
            <p class="m-2"><test1>Scope</test1><b class="mx-2">${scope}</b><test1>calories</test1></p>
        </div>
        <div>
            <p class="m-2"><test1>Proteins</test1><b class="mx-2">${proteins}</b><test1>g</test1></p>
        </div>
        <div>
            <p class="m-2"><test1>Fats</test1><b class="mx-2">${fats}</b><test1>g</test1></p>
        </div>
        <div>
            <p class="m-2 mb-5"><test1>Carbohydrates</test1><b class="mx-2">${carbohydrates}</b><test1>g</test1></p>
        </div>
    </div>

    <div class="mt-5 mb-5">
        <br>
    </div>
</@c.page>

