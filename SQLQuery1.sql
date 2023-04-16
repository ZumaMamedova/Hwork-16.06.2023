CREATE DATABASE Course

USE Course

CREATE TABLE Users(
Id int,
[Name] nvarchar(50),
Surname nvarchar(50),
Age int,
Email nvarchar(50),
[Is Delated] bit
)

CREATE TABLE Educations(
Id int,
[Name] nvarchar(50)
)

CREATE TABLE Teachers(
Id int,
FullName nvarchar(50),
Age int,
Email nvarchar(50),
[Address] nvarchar(50),
[Is Delated] bit
)

EXEC sp_rename 'Users.[Is Delated]', IsDeleted
EXEC sp_rename 'Teachers.[Is Delated]',IsDeleted

INSERT INTO Users VALUES(1,'Zuma', 'Mamedova',31,'zuma.m.a91@gmail.com',0)
INSERT INTO Users VALUES(1,'Lala', 'Aliyeva',20,'lala@gmail.com',0)
INSERT INTO Users VALUES(1,'Gunel', 'Huseynzade',30,'gunel@gmail.com',0)
INSERT INTO Users VALUES(1,'Zaka', 'Vakilov',27,'zaka@gmail.com',0)
INSERT INTO Users VALUES(1,'Anar', 'Mamedov',35,'anar@gmail.com',0)
INSERT INTO Users VALUES(1,'Leyla', 'Alakbarova',32,'leyla@gmail.com',0)
INSERT INTO Users VALUES(1,'Aynur', 'Pashayeva',29,'aynur@gmail.com',0)

 SELECT *FROM Teachers

 INSERT INTO Teachers VALUES(1,'Zuma',35,'91@gmail.com','Baki',0)
 INSERT INTO Teachers VALUES(1,'Aygun',40,'a@gmail.com','Ganca',0)
 INSERT INTO Teachers VALUES(1,'Vusale',45,'v91@gmail.com','Yasamal',0)
 INSERT INTO Teachers VALUES(1,'Mehman',42,'m@gmail.com','Nizami',0)
 INSERT INTO Teachers VALUES(1,'Gular',37,'g@gmail.com','Bayil',0)
 INSERT INTO Teachers VALUES(1,'Zemfira',25,'zem@gmail.com','Binagadi',0)
 INSERT INTO Teachers VALUES(1,'Farid',27,'f@gmail.com','Batamdart',0)

 SELECT * FROM Users

 SELECT * FROM Users WHERE Age<=20
 SELECT COUNT (*) FROM Users 
 SELECT * FROM Teachers WHERE Age<30
 SELECT FullName, Age, [Address] FROM Teachers