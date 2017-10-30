CREATE TABLE address (
  id      SERIAL PRIMARY KEY,
  country VARCHAR(20),
  city    VARCHAR(20),
  address VARCHAR(20)
);

CREATE TABLE person (
  id         SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name  VARCHAR(20),
  dob        DATE,
  gender     CHAR,
  address_id INT,
  CONSTRAINT fk_person_to_address FOREIGN KEY (address_id) REFERENCES address (id),
  picture    BIT
);

CREATE TABLE phone_type (
  id   SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE phone (
  id            SERIAL PRIMARY KEY,
  phone_type_id INT,
  CONSTRAINT fk_phone_to_type FOREIGN KEY (phone_type_id) REFERENCES phone_type (id),
  number        VARCHAR(15)
);

-- select * from person p
--   left join person_phones pp on pp.person_id = p.id
--   left join phone ph on pp.phone_id = ph.id;

CREATE TABLE person_phones (
  person_id INT,
  phone_id  INT,
  CONSTRAINT pk_person_phones PRIMARY KEY (person_id, phone_id),
  CONSTRAINT fk_person_phones_to_person FOREIGN KEY (person_id) REFERENCES person (id),
  CONSTRAINT fk_person_phones_to_phone FOREIGN KEY (phone_id) REFERENCES phone (id)
);

CREATE TABLE profesor (
  id     INT PRIMARY KEY,
  salary DOUBLE PRECISION,
  CONSTRAINT fk_profesor_to_person FOREIGN KEY (id) REFERENCES person (id)
);

CREATE TABLE library_abonament (
  id         SERIAL PRIMARY KEY,
  status     VARCHAR(5),
  start_date DATE,
  end_date   DATE
);

CREATE TABLE groupp (
  id   SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE student (
  id       INT PRIMARY KEY,
  group_id INT,
  CONSTRAINT fk_student_to_person FOREIGN KEY (id) REFERENCES person (id),
  CONSTRAINT fk_student_to_groupp FOREIGN KEY (group_id) REFERENCES groupp (id)
);

CREATE TABLE discipline (
  id          SERIAL PRIMARY KEY,
  profesor_id INT,
  treshold    DOUBLE PRECISION,
  title       VARCHAR(50),
  CONSTRAINT fk_discipline_to_profesor FOREIGN KEY (profesor_id) REFERENCES profesor (id)
);

CREATE TABLE discipline_average (
  id            SERIAL PRIMARY KEY,
  student_id    INT,
  discipline_id INT,
  average_mark  DOUBLE PRECISION,
  CONSTRAINT fk_discipline_average_to_student FOREIGN KEY (student_id) REFERENCES student (id),
  CONSTRAINT fk_discipline_average_to_discipline FOREIGN KEY (discipline_id) REFERENCES discipline (id)
);

CREATE TABLE student_discipline (
  student_id    INT,
  discipline_id INT,
  CONSTRAINT pk_student_discipline PRIMARY KEY (student_id, discipline_id),
  CONSTRAINT fk_student_discipline_to_student FOREIGN KEY (student_id) REFERENCES student (id),
  CONSTRAINT fk_student_discipline_to_discipline FOREIGN KEY (discipline_id) REFERENCES discipline (id)
);

CREATE TABLE mark (
  id            SERIAL PRIMARY KEY,
  student_id    INT,
  profesor_id   INT,
  discipline_id INT,
  mark          INT,
  created_date  DATE,
  CONSTRAINT fk_mark_to_student FOREIGN KEY (student_id) REFERENCES student (id),
  CONSTRAINT fk_mark_to_profesor FOREIGN KEY (profesor_id) REFERENCES profesor (id),
  CONSTRAINT fk_mark_to_discipline FOREIGN KEY (discipline_id) REFERENCES discipline (id)
)
