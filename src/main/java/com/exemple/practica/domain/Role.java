package com.exemple.practica.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER,
    PRIVATE,
    ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
