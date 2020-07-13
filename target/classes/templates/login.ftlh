<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    ${message?if_exists}
    <div class="mb-3">
        <p><b>Login</b></p>
    </div>
    <@l.login "/login" false/>
</@c.page>
