CREATE TABLE project (
project_id int auto_increment not null,
project_name varchar(128) not null,
estimated_hours decimal(7,2),
actual_hours decimal(7,2),
difficulty int,
notes text,
Primary Key(project_id)
);

CREATE TABLE material (
material_id int auto_increment not null,
project_id int not null,
material_name varchar(128) not null,
num_required int,
cost decimal(7,2),
primary key(material_id),
foreign key (project_id)
);

CREATE TABLE step (
step_id int auto_increment not null,
project_id int not null,
step_text text not null,
step_order int not null,
primary key(step_id),
foreign key(project_id)
);

CREATE TABLE category (
category_id int auto_increment not null,
category_name varchar(128) not null,
primary key(category_id)
);

CREATE TABLE project_category (
project_id int not null,
category_id int not null,
foreign key(project_id),
foreign key(category_id)
);