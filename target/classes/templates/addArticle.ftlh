<#import "parts/common.ftlh" as c>

<@c.page>

    <div class="container">
        <div class="row">
            <div class="col">
                <form method="post" action="/addArticle" enctype="multipart/form-data">
                    <input type="text" name="name" placeholder="Name of article" class="form-control">
                    <div>
                        <textarea name="text" class="form-control" placeholder="Enter the text here"></textarea>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <br>
                        <strong class="alert alert-${alertType}" style="color: red">${alert?if_exists}</strong>
                    <br>
                    <button type="submit" class="btn btn-dark mt-4">Publish</button>
                </form>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-7">
                <div>
                    <#list messages as message>
                        <div class="card-deck d-flex justify-content-center">
                            <div class="card text-white bg-dark mb-3" style="max-width: 35rem;" >
                                <strong class="text-center" style="color: #ffbf29; font-family: 'Domine', serif;">${message.name}</strong>
                                <div class="m-2">
                                    <p style="font-family: 'Questrial', sans-serif;">${message.text}</p>
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
            </div>
            <div class="col-5">
                <form method="get" action="/addArticle" class="form-inline">
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
    </div>

    <div class="mt-5 mb-5">
        <br>
    </div>

</@c.page>