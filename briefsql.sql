
CREATE DATABASE ecole;
use ecole;

CREATE Table roles(
    id_role INT PRIMARY key Auto_increment ,
    label_r VARCHAR (255)

);

INSERT into roles(label_r)VALUES("admin"),("prof"),("student");

CREATE Table users(
    id_user int PRIMARY key Auto_increment ,
    firstname VARCHAR (255),
    lastname VARCHAR (255),
    email varchar(255) UNIQUE not NULL,
    passwo_rd hash,
    id_role int ,
    Foreign Key (id_role) REFERENCES roles (id_role)
);

INSERT INTO users( firstname,lastname,email,passwo_rd,id_role)
VALUES("asma","ennafia","enna@gail.com","asss12*$",1),("yasmine","lasna2","yasmine@gmal.com","ssddf",2)

CREATE Table cours(
    id_cour int PRIMARY key Auto_increment ,
    title varchar(255),
    descr_iption varchar(255),
    total_hours TIME ,
    prof_id int,
    Foreign Key (prof_id) REFERENCES usres ( prof_id),

);
INSERT INTO cours(title, descr_iption,total_hours ,prof_id) VALUES("physique","le poids et la masse",'14:30:00'),("maths","lesprobablites",'14:30:00')

CREATE table students(
    id_student int PRIMARY key Auto_increment ,
    date_ofbirth date not null,
    student_number int not null,
    id_class int ,
    Foreign Key (id_class) REFERENCES classes (id_class)
);

INSERT INTO students(date_ofbirth, student_number, id_class)VALUES("2009-15-01",2,1),("2012-13-02",20,1)

CREATE TABLE Enrollments(
    id_Enrollment int  PRIMARY key Auto_increment ,
    enrolled_at date,
    status_actif_termine  VARCHAR(255),
    id_cour int ,
    Foreign Key (id_cour) REFERENCES cours (id_cour),
    id_student int ,
    Foreign Key (id_student) REFERENCES  students (id_student));

INSERT INTO Enrollments(enrolled_at,status_actif_termine,id_cour,id_student)VALUES
("2026-12-01","actif",2,2),("2017-07-08","termine",1,2)

CREATE Table classes(
    id_classe   int PRIMARY key Auto-increment ,
    na_me VARCHAR(255),
    classroom_number int not null
);
INSERT INTO classes(na_me,classroom_number) VALUES("CL1",16),("Cl2",20)


 