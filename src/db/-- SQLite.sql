-- SQLite

INSERT into Employee VALUES ("abe","sdf","jd","von","lix","Kebele Manager");
INSERT into Employee VALUES ("jdd","sdf","jd","von","lix","System Administrator");
INSERT into Employee VALUES ("nat","sdf","jd","von","lix","Information Officer");
INSERT into Employee VALUES ("abc", "xyz", "John", "Doe", "Buddy", "System Administrator");
INSERT into Employee VALUES ("bak", "xyz", "John", "Doe", "Buddy", "Finance Officer");

INSERT into Employee VALUES ("efg", "hij", "Jane", "Smith", "Luna", "Data Analyst");

INSERT into Employee VALUES ("klm", "nop", "Sarah", "Johnson", "Max", "Project Manager");

INSERT into Employee VALUES ("qrs", "tuv", "Michael", "Williams", "Charlie", "Sales Representative");

INSERT into Employee VALUES ("wxy", "zab", "Emily", "Brown", "Milo", "Graphic Designer");

INSERT into Employee VALUES ("cde", "fgh", "David", "Miller", "Lucy", "Marketing Specialist");

INSERT into Employee VALUES ("ijk", "lmn", "Jennifer", "Anderson", "Rocky", "HR Coordinator");

INSERT into Employee VALUES ("opq", "rst", "Matthew", "Taylor", "Bella", "Financial Analyst");

INSERT into Employee VALUES ("uvw", "xyz", "Jessica", "Garcia", "Max", "Customer Support Representative");

INSERT into Employee VALUES ("def", "ghi", "Daniel", "Wilson", "Cooper", "Operations Manager");

-- clear the All the tables
DELETE FROM Resident;
DELETE FROM MapHolder;
DELETE FROM Employee;

    CREATE table Employee (
        username varchar(25) PRIMARY KEY,
        password varchar(25),
        Name varchar(25),
        FName varchar(25),
        GFName varchar(25),
        job varchar(25)
    )

    Create table Resident (
        ResidentID INTEGER PRIMARY KEY AUTOINCREMENT,
        Name varchar(25),
        FName varchar(25),
        GFName varchar(25),
        DOB DATE,
        POB varchar(25),
        PhoneNumber varchar(25),
        Sex varchar(10),
        MaritalStatus varchar(10),
        Citizenship varchar(25),
        BloodType varchar(5),
        MotherName varchar(25),
        ECF varchar(25),
        ECP varchar(25),
        Job varchar(25),
        HouseNumber varchar(25),
        ResidentPhoto BLOB
    )

    Create table MapHolder (
        MapHolderID INTEGER PRIMARY KEY AUTOINCREMENT,
        MapHolderName varchar(25),
        MapHolderFName varchar(25),
        MapHolderGFName varchar(25),
        MapHolderPhoneNum varchar(25),
        MapHolderPhoto BLOB
    )

    CREATE TABLE Resident_Mapholder (
        RID INTEGER,
        MID INTEGER,
        FOREIGN KEY (RID) REFERENCES Resident (ResidentID),
        FOREIGN KEY (MID) REFERENCES MapHolder (MapHolderID)
    )

    -- added tables

    

