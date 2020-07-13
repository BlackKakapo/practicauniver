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
        <form method="post" action="/calculationSimple">
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
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <br>
            <strong class='alert alert-${alertType}' style="color: red">${alert?if_exists}</strong>
            <br>
            <button type="submit" class="btn btn-dark mt-4">Calculate</button>
            </div>
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
    </div>

    <div class="mt-5 mb-5">
        <br>
    </div>

</@c.page>