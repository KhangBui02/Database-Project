DROP TABLE Lawyer CASCADE CONSTRAINTS;
CREATE TABLE Lawyer (
  L_ID     number(3) not null, 
  fname    varchar2(15) not null,
  lname    varchar2(15) not null,
  L_type   varchar2(15) not null,
  area     varchar2(15) not null,
  school   number(3) not null,
  
  primary key (L_ID),
  foreign key (school) references Schooling(S_ID)
);

DROP TABLE Case CASCADE CONSTRAINTS;
CREATE TABLE Case (
  C_ID            number(3) not null, 
  C_type          varchar2(15) not null,
  C_result        varchar2(10) not null,
  t_lawyer        number(3),
  l_lawyer        number(3) not null,
  
  primary key (C_ID),
  foreign key (t_lawyer) references Lawyer(L_ID),
  foreign key (l_lawyer) references Lawyer(L_ID)
);

DROP TABLE Schooling CASCADE CONSTRAINTS;
CREATE TABLE Schooling (
  S_ID           number(3) not null,
  S_name         varchar2(30) not null, 
  grad_date      number(4) not null,
  
  primary key (S_ID)
);


