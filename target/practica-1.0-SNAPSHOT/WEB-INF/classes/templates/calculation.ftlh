<#import "parts/common.ftlh" as c>

<@c.page>

    <div class="form-group">
        <form method="post" action="/calculation">
            <input type="text" name="greutate" placeholder="Weight(kg)" class="form-control">
            <input type="text" name="inaltime" placeholder="Height(cm)" class="form-control">
            <input type="text" name="varsta" placeholder="Age" class="form-control">

            <div class="form-check">
                <label class="form-check-label" for="exampleCheck1">Indicate your gender</label>
                <br>
                <input type="radio" class="form-check-input" id="exampleCheck1" name="sex" value="F">F
                <br>
                <input type="radio" class="form-check-input" id="exampleCheck1" name="sex" value="M">M
            </div>
            <div class="form-check">
                <label class="form-check-label" for="exampleCheck1">Indicate your degree of activity</label>
                <br>
                <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="1">Sedentar
                <br>
                <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="2">Low activ
                <br>
                <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="3">Activ
                <br>
                <input type="radio" class="form-check-input" id="exampleCheck1" name="activiti" value="4">Marafonetz
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-dark mt-4">Calculate</button>
        </form>
    </div>

    <div>
        <p class="m-2">Daily calorie requirement <b class="ml-2">${calorii}</b></p>
    </div>
    <div>
        <p class="m-2">Your body mass index<b class="ml-2">${IMC}</b></p>
    </div>
    <div>
        <p class="m-2">Result<b class="ml-2">${text}</b></p>
    </div>
    <div>
        <p class="m-2">Requirements<b class="ml-2">${requirements}</b></p>
    </div>
</@c.page>

