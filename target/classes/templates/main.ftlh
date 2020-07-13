<#import "parts/common.ftlh" as c>

<@c.page>

<div class="container">
    <div class="row">
        <div class="col-7">
        <#list messages as message>
            <div class="card-deck d-flex justify-content-center">
                <div class="card text-white bg-dark mb-3" style="max-width: 35rem;" >
                    <div>
                        <#if message.filename??>
                            <img class="card-img-top w-100 h-100 text-center" src="/img/${message.filename}">
                        </#if>
                    </div>
                    <strong class="text-center" style="color: #ffbf29; font-family: 'Domine', serif;">${message.name}</strong>
                    <div class="m-2">
                        <p style="font-family: 'Questrial', sans-serif;">${message.text}</p>
                    </div>
                    <div class="card-footer text-muted">
                        <strong>${message.authorName}</strong>
                        <#if message.date??>
                            <p>${message.date}</p>
                        </#if>
                    </div>
                </div>
            </div>
            <br>
            <#else>
                No messages
        </#list>
        </div>
        <div class="col-5">
            <form method="get" action="/main" class="form-inline">
                <div class="col-xs-2">
                    <input type="text" name="filter" placeholder="Search" class="form-control" value="${filter?if_exists}">
                </div>
                <br>
                <div class="col-xs-2">
                    <button type="submit" class="btn btn-dark mt-2">Search</button>
                </div>
            </form>
        </div>
    </div>
    <div class="mt-5 mb-5">
        <br>
    </div>
</div>

</@c.page>