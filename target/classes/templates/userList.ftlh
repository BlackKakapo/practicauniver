<#import "parts/common.ftlh" as c>

<@c.page>
    
    <p>List of Users</p>

<table class="table">
    <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col">#</th>
        </tr>
    </thead>

    <tbody>
        <#list users as user>
            <tr>
                <td><b style="font-family: 'Domine', serif;">${user.username}</b></td>
                <td>
                    <#list user.roles as role>${role}<#sep>,  </#list>
                </td>
                <td>
                    <a href="/user/${user.id}">EDIT</a>
                </td>
            </tr>
        </#list>
    </tbody>
</table>
</@c.page>