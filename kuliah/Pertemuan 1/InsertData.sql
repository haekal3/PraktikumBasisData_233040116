DROP TABLE MAHASISWA;
CREATE TABLE MAHASISWA
(
	id INT NOT NULL IDENTITY,
	NPM CHAR(9) NOT NULL,
	Nama VARCHAR(50),
	Kelas VARCHAR(3),
	Jurusan VARCHAR(50),
	Fakultas VARCHAR(50)
)
INSERT INTO MAHASISWA 
VALUES 
	('233040116', 'Haekal Khadafy', 'D', 'Informatika', 'Teknik'),
	('233040117' ,'Renu Resdina', 'B','Informatika','Teknik'),
	('233040121' ,'Azmi Rahmatullah', 'C','Informatika','Teknik'),
	('233040123' ,'Firkri Lazuardi', 'A','Informatika','Teknik'),
	('233040112' ,'Tegar Wiguno', 'D','Informatika','Teknik'),
	('233040116' ,'Sopyan', 'D','Informatika','Teknik');

SELECT * FROM MAHASISWA;