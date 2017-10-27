create TABLE address (
  id serial PRIMARY KEY,
  country varchar(20),
  city varchar(20),
  address varchar(20)
);

create TABLE person (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  dob date,
  gender CHAR,
  address_id int,
 CONSTRAINT fk_person_to_address FOREIGN KEY (address_id) REFERENCES address(id),
  picture BIT
);

  create TABLE phone_type(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20)
  );

create TABLE phone (
  id SERIAL PRIMARY KEY,
  type_id INT,
  CONSTRAINT fk_phone_to_type FOREIGN KEY (phone_type_id) REFERENCES phone_type(id),
  number VARCHAR(15)
);

/*select * from person p
  left join person_phones pp on pp.person_id = p.id
  left join phone ph on pp.phone_id = ph.id;*/

create TABLE person_phones (
  person_id int,
  phone_id int,
  CONSTRAINT pk_person_phones PRIMARY KEY (person_id, phone_id),
  CONSTRAINT fk_person_phones_to_person FOREIGN KEY (person_id) REFERENCES person(id),
  CONSTRAINT fk_person_phones_to_phone FOREIGN KEY (phone_id) REFERENCES phone(id)
);

create CREATE TABLE profesor (
  salary DOUBLE PRECISION,
);

create TABLE library_abonament(
  id SERIAL PRIMARY KEY,

);

create TABLE student (

);

create TABLE group(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  stude
)
create Table discipline_average(
  id SERIAL PRIMARY KEY,
  student id int,
  CONSTRAINT fk_discipline_average_to_student FOREIGN KEY (student_id) REFERENCES student(id),

)