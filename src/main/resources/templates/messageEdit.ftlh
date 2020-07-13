<#import "parts/common.ftlh" as c>

<@c.page>

<p>Message Editor</p>

    <div>
        <form action="/message" method="post">
            <input type="text" name="name" class="form-control" value="${message.name}">
            <br>
            <input name="text" class="form-control" value="${message.text}">
            <input type="hidden" value="${message.id}" name="messageId"/>
            <input type="hidden" value="${_csrf.token}" name="_csrf"/>
            <button class="btn btn-success btn-lg btn-block mt-5" type="submit" name="save">Save</button>
        </form>
    </div>

    <div>
        <form action="/message/delete" method="post">
            <input type="hidden" value="${message.id}" name="messageId"/>
            <input type="hidden" value="${_csrf.token}" name="_csrf"/>
            <div>
                <button class="btn btn-danger btn-lg btn-block mt-5" type="submit" name="delete">Delete</button>
            </div>
        </form>
    </div>

</@c.page>