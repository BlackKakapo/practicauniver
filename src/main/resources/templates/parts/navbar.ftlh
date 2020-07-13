<#include "securety.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-warning" style="font-family: 'Domine', serif;">
    <a class="navbar-brand" href="/">Light work</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/main">Articles</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/calculationSimple">Calculation</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/yourbody">Yourbody</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>
            <#if isAdmin || isPrivate>
                <li class="nav-item">
                    <a class="nav-link" href="/addArticle">Add Article</a>
                </li>
            </#if>
            <#if isAdmin || isPrivate>
                <li class="nav-item">
                    <a class="nav-link" href="/message">Article List</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User List</a>
                </li>
            </#if>
        </ul>
        <div class="navbar-text mr-4">${name}</div>
        <@l.logout/>
    </div>
</nav>
