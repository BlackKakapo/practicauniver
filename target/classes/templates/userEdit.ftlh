<#import "parts/common.ftlh" as c>

<@c.page>

    <p>User Editor</p>

    <div>
        <form action="/user" method="post">
            ${user.username}
            <br>
            <#list roles as role>
                    <label>
                        <br>
                        <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", " ")}>   ${role}
                    </label>
            </#list>
            <input type="hidden" value="${user.id}" name="userId"/>
            <input type="hidden" value="${_csrf.token}" name="_csrf"/>
            <button class="btn btn-success btn-lg btn-block mt-5" type="submit" name="save">Save</button>
        </form>
    </div>

    <div>
        <form action="/user/delete" method="post">
            <input type="hidden" value="${user.id}" name="userId"/>
            <input type="hidden" value="${_csrf.token}" name="_csrf"/>
            <div>
                <button class="btn btn-danger btn-lg btn-block mt-5" type="submit" name="delete">Delete</button>
            </div>
        </form>
    </div>

</@c.page>