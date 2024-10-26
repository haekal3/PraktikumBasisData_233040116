USE Pertemuan 5;

CREATE TABLE Mahasiswa (
  id BIGINT PRIMARY KEY,
  NPM INT,
  nama VARCHAR(255),
  tanggal_lahir DATE,
  alamat VARCHAR(255),
  no_hp INT,
  jurusan_id BIGINT,
  dosen_wali_id BIGINT,
  FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
  FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_wali(id)
);

CREATE TABLE jurusan (
  id BIGINT PRIMARY KEY,
  nama_jurusan BIGINT
);

CREATE TABLE Dosen_wali (
  id BIGINT PRIMARY KEY,
  NIP BIGINT,
  nama VARCHAR(255),
  tanggal_lahir DATE,
  alamat VARCHAR(255),
  no_hp INT
);

ALTER TABLE Mahasiswa
ADD status BIT;

ALTER TABLE jurusan
ALTER COLUMN nama_jurusan VARCHAR(255);

INSERT INTO jurusan (id, nama_jurusan) 
VALUES 
    (1,'Teknik Informatika'),
    (2,'Sistem Informasi'),
    (3,'Teknik Komputer'),
    (4,'Ilmu Komputer'),
    (5,'Teknologi Informasi');

SELECT * FROM jurusan;

INSERT INTO Dosen_wali (id, NIP, nama, tanggal_lahir, alamat, no_hp)
VALUES 
	(1, '123456', 'Asep', '1995-02-21', 'Jl. Merdeka 12', 111111111),
	(2, '465446', 'Udin', '1990-11-22', 'Jl. Diponegoro 10', 222222222),
	(3, '432432', 'Ayi', '1991-06-18', 'Jl. Sudirman 8', 333333333),
	(4, '523453', 'Salis', '1998-02-14', 'Jl. S. Parman 5', 444444444),
	(5, '842389', 'Ucup', '1991-08-05', 'Jl. Gatot Subroto 6', 555555555), 
	(6, '842354', 'Ukin', '1992-09-13', 'Jl. Gajah Mada 15', 666666666),
	(7, '844121', 'Dani', '1993-12-23', 'Jl. Mangga 9', 777777777),
	(8, '632477', 'Usep', '1995-07-01', 'Jl. K.S. Tubun 11', 888888888),
	(9, '754359', 'Udan', '1990-07-01', 'Jl. K.S. Buru 10', 999999999),
	(10, '242335', 'Abing', '1945-07-03', 'Jl. K.S. Buru 11', 000000000);

SELECT * FROM Dosen_Wali;

INSERT INTO Mahasiswa (id, NPM, nama, tanggal_lahir, alamat, no_hp, jurusan_id, dosen_wali_id) 
VALUES 
	(1, 230001, 'Haekal', '2005-02-21', 'Jl. Merdeka 12', 089637341, 1, 1),
	(2, 230002, 'Tegar', '2003-11-22', 'Jl. Diponegoro 10', 089721242, 1, 2),
	(3, 230003, 'Andika', '2003-06-18', 'Jl. Sudirman 8', 089672315, 2, 3),
	(4, 230004, 'Azmi', '2004-02-14', 'Jl. S. Parman 5', 089612349, 2, 4),
	(5, 230005, 'Azhar', '2004-08-05', 'Jl. Gatot Subroto 6', 089698765, 3, 1),
	(6, 230006, 'Renu', '2005-09-13', 'Jl. Gajah Mada 15', 083812413, 3, 2),
	(7, 230007, 'Fikri', '2005-12-23', 'Jl. Mangga 9', 083865564, 4, 3),
	(8, 230008, 'Sopyan', '2005-07-01', 'Jl. K.S. Tubun 11', 082123345, 4, 4),
	(9, 230009, 'Ripan', '2005-07-01', 'Jl. K.S. Buru 10', 081213457, 4, 1),
	(10, 230010, 'Fauzan', '2004-07-10', 'Jl. Apel 10', 089645467, 4, 2),
	(11, 230011, 'Yoan', '2003-07-21', 'Jl. Anggur 4', 089645461, 3, 2),
	(12, 230012, 'Jenas', '2005-01-12', 'Jl. Apel 15', 089645467, 4, 1),
	(13, 230013, 'Farel', '2005-01-11', 'Jl. Nangka 11', 089645468, 1, 4),
	(14, 230014, 'Harits', '2005-10-20', 'Jl. Apel 20', 089645462, 4, 3),
	(15, 230015, 'Akmal', '2004-02-28', 'Jl. Alpukat 2', 085945467, 3, 2),
	(16, 230016, 'Fernanda', '2005-11-22', 'Jl. Apel 50', 0813645467, 1, 1),
	(17, 230017, 'Rama', '2004-05-23', 'Jl. Anggur 72', 0813645466, 2, 1),
	(18, 230018, 'Khadafy', '2000-02-21', 'Jl. Anggur 53', 081364546, 2, 4),
	(19, 230019, 'Dafi', '2001-02-21', 'Jl. mangga 1', 081364545, 2, 2),
	(20, 230020, 'Widy', '2002-02-21', 'Jl. mangga 88', 088864545, 1, 2);

	UPDATE mahasiswa SET status = 1 WHERE status IS NULL;

SELECT * FROM mahasiswa

--menghapus 5 data
DELETE FROM mahasiswa
WHERE id IN (16, 17, 18, 19, 20);

SELECT * FROM mahasiswa

--menambahkan 5 data yang telah terhapus
INSERT INTO Mahasiswa (id, NPM, nama, tanggal_lahir, alamat, no_hp, jurusan_id, dosen_wali_id) 
VALUES 
	(16, 230016, 'Fernanda', '2005-11-22', 'Jl. Apel 50', 0813645467, 1, 1),
	(17, 230017, 'Rama', '2004-05-23', 'Jl. Anggur 72', 0813645466, 2, 1),
	(18, 230018, 'Khadafy', '2000-02-21', 'Jl. Anggur 53', 081364546, 2, 4),
	(19, 230019, 'Dafi', '2001-02-21', 'Jl. mangga 1', 081364545, 2, 2),
	(20, 230020, 'Widy', '2002-02-21', 'Jl. mangga 88', 088864545, 1, 2);

SELECT * FROM mahasiswa