CREATE DATABASE RestaurantDB;

<< << << < HEAD USE RestaurantDB;

-- Create tables:
CREATE TABLE CUSTOMER (
    Customer_ID int NOT NULL,
    First_Name varchar(50),
    Last_Name varchar(50),
    Phone_Number varchar(15),
    Email varchar(50),
    Address varchar(100),
    CONSTRAINT CUSTOMER_PK PRIMARY KEY (Customer_ID)
);

CREATE TABLE RESERVATION (
    Reservation_ID int NOT NULL,
    Customer_ID int,
    Number_Of_People int,
    Time time,
    Date date,
    CONSTRAINT RESERVATION_PK PRIMARY KEY (Reservation_ID),
    CONSTRAINT RESERVATION_CUSTOMER_FK FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER (Customer_ID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE TABLE_INFO (
    Table_ID int NOT NULL,
    Seating_Capacity int,
    Table_Number int,
    CONSTRAINT TABLE_INFO_PK PRIMARY KEY (Table_ID)
);

CREATE TABLE STAFF (
    Staff_ID int NOT NULL,
    First_Name varchar(50),
    Last_Name varchar(50),
    Role VARCHAR(50),
    Phone_Number varchar(15),
    Email varchar(50),
    Address varchar(100),
    CONSTRAINT STAFF_PK PRIMARY KEY (Staff_ID)
);

CREATE TABLE RESERVES (
    Reservation_ID int NOT NULL,
    Table_ID int NOT NULL,
    CONSTRAINT TABLE_RESERVATION_PK PRIMARY KEY (Reservation_ID, Table_ID),
    CONSTRAINT TABLE_RESERVATION_RESERVATION_FK FOREIGN KEY (Reservation_ID) REFERENCES RESERVATION (Reservation_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT TABLE_RESERVATION_TABLE_FK FOREIGN KEY (Table_ID) REFERENCES TABLE_INFO (Table_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ASSIGNED_TO (
    Table_ID int NOT NULL,
    Staff_ID int NOT NULL,
    Time time NOT NULL,
    Date date NOT NULL,
    CONSTRAINT STAFF_ASSIGNMENT_PK PRIMARY KEY (Table_ID, Staff_ID, time, date),
    CONSTRAINT STAFF_ASSIGNMENT_TABLE_FK FOREIGN KEY (Table_ID) REFERENCES TABLE_INFO (Table_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT STAFF_ASSIGNMENT_STAFF_FK FOREIGN KEY (Staff_ID) REFERENCES STAFF (Staff_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

== == == = USE RestaurantDB;

-- Create tables:
CREATE TABLE CUSTOMER (
    Customer_ID int NOT NULL,
    First_Name varchar(50),
    Last_Name varchar(50),
    Phone_Number varchar(15),
    Email varchar(50),
    Address varchar(100),
    CONSTRAINT CUSTOMER_PK PRIMARY KEY (Customer_ID)
);

CREATE TABLE RESERVATION (
    Reservation_ID int NOT NULL,
    Customer_ID int,
    Number_Of_People int,
    Time time,
    Date date,
    CONSTRAINT RESERVATION_PK PRIMARY KEY (Reservation_ID),
    CONSTRAINT RESERVATION_CUSTOMER_FK FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER (Customer_ID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE TABLE_INFO (
    Table_ID int NOT NULL,
    Seating_Capacity int,
    Table_Number int,
    CONSTRAINT TABLE_INFO_PK PRIMARY KEY (Table_ID)
);

CREATE TABLE STAFF (
    Staff_ID int NOT NULL,
    First_Name varchar(50),
    Last_Name varchar(50),
    Role VARCHAR(50),
    Phone_Number varchar(15),
    Email varchar(50),
    Address varchar(100),
    CONSTRAINT STAFF_PK PRIMARY KEY (Staff_ID)
);

CREATE TABLE RESERVES (
    Reservation_ID int NOT NULL,
    Table_ID int NOT NULL,
    CONSTRAINT TABLE_RESERVATION_PK PRIMARY KEY (Reservation_ID, Table_ID),
    CONSTRAINT TABLE_RESERVATION_RESERVATION_FK FOREIGN KEY (Reservation_ID) REFERENCES RESERVATION (Reservation_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT TABLE_RESERVATION_TABLE_FK FOREIGN KEY (Table_ID) REFERENCES TABLE_INFO (Table_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ASSIGNED_TO (
    Table_ID int NOT NULL,
    Staff_ID int NOT NULL,
    Time time NOT NULL,
    Date date NOT NULL,
    CONSTRAINT STAFF_ASSIGNMENT_PK PRIMARY KEY (Table_ID, Staff_ID, time, date),
    CONSTRAINT STAFF_ASSIGNMENT_TABLE_FK FOREIGN KEY (Table_ID) REFERENCES TABLE_INFO (Table_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT STAFF_ASSIGNMENT_STAFF_FK FOREIGN KEY (Staff_ID) REFERENCES STAFF (Staff_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

>> >> >> > development
