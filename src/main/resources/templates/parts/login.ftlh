<#macro login path isRegisterForm>

    <form action="${path}" method="post">
        <div class="form-group">
            <label class="col-sm-2 col-from-label"> User Name : </label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group">
                <label class="col-sm-2 col-from-label"> Repeat password: </label>
                <div class="col-sm-6">
                    <input type="password" name="password2" class="form-control"/>
                </div>
            </div>
        </#if>
        <#if isRegisterForm>
        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Email: </label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control"/>
            </div>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-dark">
            <#if isRegisterForm>
                Create
                <#else>
                Sign In
            </#if>
        </button>
    </form>
    <#if !isRegisterForm>
        <a href="/registration">Registration</a>
    </#if>

</#macro>

<#macro logout>

    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-dark">Log out</button>
    </form>

</#macro>