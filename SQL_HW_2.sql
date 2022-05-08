--������� ������� employees

create table employee(
	id serial primary key,
	employee_name varchar(50) not null
    );
    
select * from employee;

--��������� ������� employee 70 ��������

insert into employee(employee_name)
values ('Brut'),
	   ('Vadim'),
	   ('Vitalik'),
	   ('Ilya'),
	   ('Bulat'),
	   ('Asket'),
	   ('Anna'),
	   ('Olga'),
	   ('Dima'),
	   ('Yura'),
	   ('Umalat'),
	   ('Svetlana'),
	   ('Vladislav'),
	   ('Ignat'),
	   ('Stanislav'),
	   ('Polina'),
	   ('Ekaterina'),
	   ('Edik'),
	   ('Zak'),
	   ('Rurik'),
	   ('Eva'),
	   ('Georgiy'),
	   ('Kirill'),
	   ('Tatyana'),
	   ('Victor'),
	   ('Damir'),
	   ('Anton'),
	   ('Lolita'),
	   ('Alla'),
	   ('Olesya'),
	   ('Yana'),
	   ('Andrey'),
	   ('Sonya'),
	   ('Marina'),
	   ('Karina'),
	   ('Kseniya'),
	   ('Aleksandr'),
	   ('Nataliya'),
	   ('Timur'),
	   ('Rahim'),
	   ('David'),
	   ('Ibragim'),
	   ('Ursula'),
	   ('Violeta'),
	   ('Victoria'),
	   ('Valentin'),
	   ('Artem'),
	   ('Darya'),
	   ('Gleb'),
	   ('Zoya'),
	   ('Elena'),
	   ('Liza'),
	   ('Mark'),
	   ('Taras'),
	   ('Dina'),
	   ('Zahar'),
	   ('Egor'),
	   ('Maksim'),
	   ('Miron'),
	   ('Leonid'),
	   ('Luiza'),
	   ('Sabina'),
	   ('Raisa'),
	   ('Platon'),
	   ('Renat'),
	   ('Pavel'),
	   ('Petr'),
	   ('Nikita'),
	   ('Oliver'),
	   ('Lina');
	  
--������� ������� salary
	   
create table salary(
	id serial primary key,
	monthly_salary int not null
    );

--��������� ������� salary 15 ��������
   
insert into salary(id, monthly_salary)
values (default, 1000),
       (default, 1100),
       (default, 1200),
       (default, 1300),
       (default, 1400),
       (default, 1500),
       (default, 1600),
       (default, 1700),
       (default, 1800),
       (default, 1900),
       (default, 2000),
       (default, 2100),
       (default, 2200),
       (default, 2300),
       (default, 2400);
    

--������� ������� employee_salary
      
drop table employee_salary;

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

--��������� ������� employee_salary 40 ��������

insert into employee_salary(employee_id, salary_id)
values (1, 40),
	   (2, 39),
	   (3, 38),
	   (4, 37),
	   (5, 36),
	   (6, 35),
	   (7, 34),
	   (8, 33),
	   (9, 32),
	   (10, 31),
	   (11, 30),
	   (12, 29),
	   (13, 28),
	   (14, 27),
	   (15, 26),
	   (16, 25),
	   (17, 24),
	   (18, 23),
	   (19, 22),
	   (20, 21),
	   (21, 20),
	   (22, 19),
	   (23, 18),
	   (24, 17),
	   (25, 16),
	   (26, 15),
	   (27, 14),
	   (28, 13),
	   (29, 12),
	   (30, 11),
	   (88, 10),
	   (77, 9),
	   (50, 8),
	   (96, 7),
	   (101, 6),
	   (999, 5),
	   (150, 4),
	   (66, 3),
	   (85, 2),
	   (57, 1);
	   
-- ������� ������� roles
	  
create table roles(
	id serial primary key,
	role_name int not null unique
    );
   

--�������� ��� ������ role_name � int �� varchar(30)
drop table roles;

alter table roles
alter role_name type varchar(30);

--��������� ������� roles 20 ��������

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');

--������� ������� roles_employee
	  
select * from roles_employee;
	  
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employee (id),
	foreign key (role_id)
		references roles (id)
	);

--��������� ������� roles_employee 40 ��������

insert into roles_employee(employee_id, role_id)
values (7, 2),
	   (20, 4),
	   (3, 9),
	   (5, 13),
	   (23, 4),
	   (11, 2),
	   (10, 9),
	   (22, 13),
	   (21, 3),
	   (34, 4),
	   (6, 7),
	   (40, 5),
	   (55, 8),
	   (66, 10),
	   (45, 1),
	   (61, 3),
	   (14, 18),
	   (69, 15),
	   (58, 11),
	   (54, 7),
	   (39, 4),
	   (19, 2),
	   (8, 8),
	   (17, 10),
	   (52, 9),
	   (36, 11),
	   (41, 14),
	   (48, 15),
	   (2, 18),
	   (1, 7),
	   (51, 17),
	   (42, 16),
	   (62, 13),
	   (56, 12),
	   (9, 6),
	   (24, 5),
	   (38, 2),
	   (15, 7),
	   (50, 11),
	   (12, 19);
	  
	   drop table roles_employee;
	