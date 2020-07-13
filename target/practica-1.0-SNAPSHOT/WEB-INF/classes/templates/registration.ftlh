<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>

<div>
    <p><b>Add new user</b></p>
</div>

    <p style="color: red">${message?if_exists}</p>

    <@l.login "/registration" true />
    <br>
        <p style="color: red">${alert?if_exists}</p>
    <br>

    <a href="/login">I have an account</a>

</@c.page>