<#import "parts/common.ftlh" as c>


<@c.page>
    <h3>${username}</h3>
    ${message?if_exists}

    <form method="post">
        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Username: </label>
            <div class="col-sm-6">
                <input type="username" name="username" class="form-control" value="${username}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control"/>
            </div>
        </div>
            <div class="form-group">
                <label class="col-sm-2 col-from-label"> Email: </label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" value="${email!''}"/>
                </div>
            </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-dark">Save</button>
    </form>

    <br>
    <p>
        Here you can change your username, password and email.
    </p>
    <div class="mt-5 mb-5">
        <br>
    </div>

</@c.page>