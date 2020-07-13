<#import "parts/common.ftlh" as c>

<@c.page>

    <p>User Editor</p>

    <form action="/user" method="post">
        <input type="text" value="${user.username}" name="username">
        <#list roles as role>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", " ")}>${role}</label>
        </#list>
        <input type="hidden" value="${user.id}" name="userId"/>
        <input type="hidden" value="${_csrf.token}" name="_csrf"/>
        <div>
            <button type="submit" name="save">Save</button>
        </div>
    </form>

</@c.page>