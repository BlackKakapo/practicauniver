<#import "parts/common.ftlh" as c>

<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" placeholder="Search" class="form-control" value="${filter?if_exists}">
            <button type="submit" class="btn btn-dark ml-4">Search</button>
        </form>
    </div>
</div>

<div>
    <#list messages as message>
        <div class="card-deck">
            <div class="card text-white bg-dark mb-3" style="max-width: 25rem;" >
                <div>
                    <#if message.filename??>
                        <img class="card-img-top w-100 h-100 text-center" src="/img/${message.filename}">
                    </#if>
                </div>
                <span>${message.name}</span>
                <div class="m-2">
                    <p>${message.text}</p>
                </div>
                <div class="card-footer text-muted">
                    <strong>${message.authorName}</strong>
                </div>
            </div>
        </div>

        <#else>
            No messages
    </#list>
</div>

</@c.page>