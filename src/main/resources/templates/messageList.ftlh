<#import "parts/common.ftlh" as c>

<@c.page>

    <p>List of Messagess</p>

    <div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Text</th>
                <th scope="col">#</th>
            </tr>
            </thead>

            <tbody>
            <#list messages as message>
                <tr>
                    <td><b style="font-family: 'Domine', serif;">${message.name}</b></td>
                    <td>${message.text}</td>
                    <td>
                        <#if message.date??>
                            <p>${message.date}</p>
                        </#if></td>
                    <td>
                        <a href="/message/${message.id}">EDIT</a>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>


        <div class="mt-5 mb-5">
            <br>
        </div>

    </div>

</@c.page>