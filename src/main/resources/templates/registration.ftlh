<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>

<div>
    <p><b>Add new user</b></p>
</div>
    <div class="mt-3 mb-3">
        <br>
        <strong class="alert alert-${messageType}" style="color: red">${message?if_exists}</strong>
        <br>
    </div>

    <@l.login "/registration" true />

    <br>
    <div class="mb-3">
        <strong class="alert alert-${alertType}" style="color: red">${alert?if_exists}</strong>
    </div>
    <br>

    <div class="mt-4 mb-5">
        <a href="/login">I have an account</a>
    </div>

    <div class="mt-5 mb-5">
        <br>
    </div>


</@c.page>