insert into usr (id, username, password, active, email)
    values(1, 'Admin', 'admin', true, 'alexandrupetrachi@gmail.com');

insert  into user_role(user_id, roles)
    values (1, 'USER'), (1, 'PRIVATE'), (1, 'ADMIN');