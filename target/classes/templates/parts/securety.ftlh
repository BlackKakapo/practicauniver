<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>

    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()
        isPrivate = user.isPrivate()
        isAdmin = user.isAdmin()
    >

    <#else>
        <#assign
            name = "unknown"
            isPrivate = false
            isAdmin = false
        >

</#if>
