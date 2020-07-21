CREATE TABLE user
(
    id         integer auto_increment,
    user_name  varchar(20) NOT NULL,
    password   varchar(40) NOT NULL,
    created_at datetime,
    PRIMARY KEY (id),
    UNIQUE KEY user_name_index (user_name)
) ENGINE = INNODB;

CREATE TABLE following
(
    user_id      integer,
    following_id integer,
    PRIMARY KEY (user_id, following_id)
) ENGINE = INNODB;

CREATE TABLE status
(
    id         int auto_increment,
    user_id    integer not null,
    body       varchar(255),
    created_at datetime,
    PRIMARY KEY (id),
    index user_id_index (user_id)
) ENGINE = INNODB;

alter table following add foreign key (user_id) references user(id);
alter table following add foreign key (following_id) references user(id);
alter table status add foreign key (user_id) references user(id);
