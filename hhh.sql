

CREATE TABLE User (
  id varchar(100) NOT NULL,
  type int(11) DEFAULT NULL,
  name varchar(100) DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Course (
  id varchar(100) NOT NULL,
  name varchar(100) DEFAULT NULL,
  address varchar(100) DEFAULT NULL,
  time varchar(100) DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Student_Course (
  S_id varchar(100) NOT NULL,
  C_id varchar(100) DEFAULT NULL,
  score varchar(3) DEFAULT NULL,
  PRIMARY KEY(S_id,C_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Teacher_Course (
  T_id varchar(100) NOT NULL,
  C_id varchar(100) DEFAULT NULL,
  PRIMARY KEY(T_id,C_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


