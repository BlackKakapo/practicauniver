<#import "parts/common.ftlh" as c>

<@c.page>
    
    <p>List of Users</p>

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td>
                    <#list user.roles as role>${role}<#sep>, </#list>
                </td>
                <td>
                    <a href="/user/${user.id}">EDIT</a>
                </td>
            </tr>
        </#list>
    </tbody>
</table>
</@c.page>