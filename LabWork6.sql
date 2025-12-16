--Задание 1
/*CREATE TRIGGER TrChangeEmail
    ON Visitor
    AFTER UPDATE
    AS
      if UPDATE(Email)
	  INSERT INTO Changelog(VisitorId, OldEmail)
	  SELECT VisitorId, Email
	  FROM deleted*/


--Задание 2
/*CREATE TRIGGER TrDeleteMovie
    ON Movie
    INSTEAD OF DELETE
    AS
      UPDATE Movie
	  SET IsDeleted=1
	  WHERE MovieId IN (SELECT MovieId
						FROM deleted)*/


--Задание 3
CREATE TRIGGER TrDeleteVisitor
    ON Visitor
    AFTER DELETE
    AS
      INSERT INTO DeletedVisitor(VisitorId, Phone, [Name], Birthday, Email)
	  SELECT VisitorId, Phone, [Name], Birthday, Email
	  FROM deleted



/*CREATE TRIGGER TrSessionPrice
    ON Session
    INSTEAD OF INSERT
    AS
	  UPDATE Session
	  SET Price = 100
	  WHERE Price < 100*/

      
