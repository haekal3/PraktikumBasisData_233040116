use perpustakaan;

--membuat tabel Anggota--
CREATE TABLE Anggota (
	id_anggota int IDENTITY(1,1) PRIMARY KEY,
	Nama varchar(255),
	Alamat varchar(255),
	Telepon varchar(255),
	Email varchar(255)
);

--membuat tabel Petugas--
CREATE TABLE Petugas (
	id_petugas int IDENTITY(1,1) PRIMARY KEY,
	Nama_petugas varchar(255),
	Telepon varchar(255),
	Email varchar(255)
);

--membuat tabel Buku--
CREATE TABLE Buku (
	id_buku int IDENTITY(1,1) PRIMARY KEY,
	Judul varchar(255),
	Penulis varchar(255),
	Penerbit varchar(255),
	Tahun_Terbit varchar(255)
);

--membuat tabel Peminjaman--
CREATE TABLE Peminjaman (
	id_peminjaman int IDENTITY(1,1) PRIMARY KEY,
	id_anggota int,
	id_buku int,
	id_petugas int,
	Tanggal_Peminjaman date
	FOREIGN KEY (id_anggota) REFERENCES Anggota(id_anggota),
	FOREIGN KEY (id_buku) REFERENCES Buku(id_buku),
	FOREIGN KEY (id_petugas) REFERENCES Petugas(id_petugas)
);

--membuat tabel Pengembalian--
CREATE TABLE Pengembalian (
	id_pengembalian int IDENTITY(1,1) PRIMARY KEY,
	id_peminjaman int,
	id_petugas int,
	Tanggal_Pengembalian date
	FOREIGN KEY (id_peminjaman) REFERENCES Peminjaman(id_peminjaman),
	FOREIGN KEY (id_petugas) REFERENCES Petugas(id_petugas)
);

-----------------------------------------------------------------------------
--Menambahkan data Anggota--
INSERT INTO Anggota (Nama, Alamat, Telepon, Email)
VALUES
('Rina Putri', 'Jl. Merpati No. 10', '081234567890', 'rina@gmail.com'),
('Budi Setiawan', 'Jl. Kenanga No. 5', '081234567891', 'budi@gmail.com'),
('Sari Wijaya', 'Jl. Melati No. 7', '081234567892', 'sari@gmail.com'),
('Andi Saputra', 'Jl. Mawar No. 12', '081234567893', 'andi@gmail.com'),
('Lina Amalia', 'Jl. Sakura No. 8', '081234567894', 'lina@gmail.com'),
('Yuli Setiani', 'Jl. Cemara No. 15', '081234567879', 'yuli@gmail.com'),
('Rizki Hidayat', 'Jl. Anggrek No. 2', '081234567895', 'rizki@gmail.com'),
('Fitri Handayani', 'Jl. Cempaka No. 6', '081234567896', 'fitri@gmail.com'),
('Dika Pratama', 'Jl. Jambu No. 20', '081234567897', 'dika@gmail.com'),
('Dewi Lestari', 'Jl. Kamboja No. 9', '081234567898', 'dewi@gmail.com'),
('Sinta Paramita', 'Jl. Duku No. 5', '081234567899', 'sinta@gmail.com'),
('Hendra Wijaya', 'Jl. Flamboyan No. 21', '081234567900', 'hendra@gmail.com'),
('Tomi Andri', 'Jl. Cemara No. 16', '081234567901', 'tomi@gmail.com'),
('Sari Kinasih', 'Jl. Pinus No. 8', '081234567902', 'sari.k@gmail.com'),
('Fahmi Rachman', 'Jl. Mahoni No. 14', '081234567903', 'fahmi@gmail.com'),
('Vera Kartika', 'Jl. Belimbing No. 3', '081234567904', 'vera@gmail.com'),
('Rian Syahputra', 'Jl. Durian No. 11', '081234567905', 'rian@gmail.com'),
('Aulia Hartati', 'Jl. Mangga No. 7', '081234567906', 'aulia@gmail.com'),
('Fajar Prakoso', 'Jl. Melon No. 17', '081234567907', 'fajar@gmail.com'),
('Rina Damayanti', 'Jl. Salak No. 22', '081234567908', 'rina.d@gmail.com'),
('Dewi Kurnia', 'Jl. Bambu No. 18', '081234567909', 'dewi.k@gmail.com'),
('Adi Kusuma', 'Jl. Durian No. 1', '081234567910', 'adi.k@gmail.com'),
('Dedi Firmansyah', 'Jl. Randu No. 13', '081234567911', 'dedi@gmail.com'),
('Lisa Febriyanti', 'Jl. Kelapa No. 19', '081234567912', 'lisa@gmail.com'),
('Ari Saputra', 'Jl. Anggrek No. 4', '081234567913', 'ari@gmail.com'),
('Fitra Widodo', 'Jl. Jati No. 2', '081234567914', 'fitra@gmail.com'),
('Nina Astuti', 'Jl. Padi No. 12', '081234567915', 'nina@gmail.com'),
('Fahri Hidayat', 'Jl. Serai No. 10', '081234567916', 'fahri@gmail.com'),
('Nina Amelia', 'Jl. Karet No. 3', '081234567917', 'nina.amelia@gmail.com'),
('Mira Ayu', 'Jl. Sawo No. 14', '081234567918', 'mira@gmail.com');

SELECT*FROM Anggota

--menambahkan data Petugas--
INSERT INTO Petugas (Nama_petugas, Telepon, Email)
VALUES
('Dewi Lestari', '081234567880', 'dewi.petugas@gmail.com'),
('Rian Saputra', '081234567881', 'rian.petugas@gmail.com'),
('Santi Pratama', '081234567882', 'santi.petugas@gmail.com'),
('Hendra Supriadi', '081234567883', 'hendra.petugas@gmail.com'),
('Andi Wijaya', '081234567884', 'andi.petugas@gmail.com'),
('Siti Aminah', '081234567885', 'siti.petugas@gmail.com'),
('Yusuf Anwar', '081234567886', 'yusuf.petugas@gmail.com'),
('Tina Hartini', '081234567887', 'tina.petugas@gmail.com'),
('Haris Rachman', '081234567888', 'haris.petugas@gmail.com'),
('Dewi Astuti', '081234567889', 'dewi.astuti@gmail.com'),
('Fajar Adi', '081234567890', 'fajar.adi@gmail.com'),
('Rina Puspita', '081234567891', 'rina.p@gmail.com'),
('Heri Santoso', '081234567892', 'heri.petugas@gmail.com'),
('Siska Mariana', '081234567893', 'siska.petugas@gmail.com'),
('Ali Murtadho', '081234567894', 'ali.murtadho@gmail.com'),
('Maya Dewanti', '081234567895', 'maya.dewanti@gmail.com'),
('Sandi Pratama', '081234567896', 'sandi.pratama@gmail.com'),
('Budi Setiawan', '081234567897', 'budi.petugas@gmail.com'),
('Risma Kurnia', '081234567898', 'risma.k@gmail.com'),
('Dina Marlia', '081234567899', 'dina.marlia@gmail.com'),
('Adi Saputra', '081234567900', 'adi.saputra@gmail.com'),
('Doni Suryanto', '081234567901', 'doni.suryanto@gmail.com'),
('Hana Putri', '081234567902', 'hana.putri@gmail.com'),
('Fitra Nugraha', '081234567903', 'fitra.n@gmail.com'),
('Eko Prasetyo', '081234567904', 'eko.prasetyo@gmail.com'),
('Nina Karmila', '081234567905', 'nina.karmila@gmail.com'),
('Rani Kusumawati', '081234567906', 'rani.k@gmail.com'),
('Dafa Firmansyah', '081234567907', 'dafa.firmansyah@gmail.com'),
('Rizka Pratiwi', '081234567908', 'rizka.pratiwi@gmail.com'),
('Yuni Rahayu', '081234567909', 'yuni.petugas@gmail.com');

SELECT*FROM Petugas;

--Menambahkan data buku--
INSERT INTO Buku (Judul, Penulis, Penerbit, Tahun_Terbit)
VALUES 
    ('Biru', 'Luluk HF', 'Gramedia Pustaka Utama', '2022'),
    ('Nanti Kita Cerita Tentang Hari Ini: Hujan Bulan Juni', 'Marchella FP', 'Gramedia Pustaka Utama', '2022'),
    ('Manusia Setengah Salmon', 'Raditya Dika', 'Bukune', '2022'),
    ('Aku Bukannya Menyerah, Hanya Sedang Lelah', 'Alvi Syahrin', 'GagasMedia', '2022'),
    ('Orang-Orang Biasa', 'Andrea Hirata', 'Bentang Pustaka', '2022'),
    ('Segala-galanya Ambyar', 'Mark Manson', 'Gramedia Pustaka Utama', '2022'),
    ('The Perfect Story: Aku, Kamu, dan Mantanmu', 'Anand Neelakantan', 'Pastel Books', '2022'),
    ('Hujan Punya Cerita tentang Kita', 'Boy Candra', 'MediaKita', '2022'),
    ('Lelaki Harimau', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '2023'),
    ('Dilan: Dia Adalah Dilanku 1990', 'Pidi Baiq', 'Pastel Books', '2023'),
    ('Sabtu Bersama Bapak', 'Adhitya Mulya', 'GagasMedia', '2023'),
    ('Cinta di Ujung Sajadah', 'Asma Nadia', 'Lingkar Pena', '2023'),
    ('Tentang Kamu', 'Tere Liye', 'Republika', '2023'),
    ('Kata', 'Rintik Sedu', 'GagasMedia', '2023'),
    ('Janji', 'Tere Liye', 'Gramedia Pustaka Utama', '2023'),
    ('Matahari', 'Tere Liye', 'Gramedia Pustaka Utama', '2023'),
    ('Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', '2023'),
    ('Kukira Kau Rumah', 'Kautsar Pratama', 'GagasMedia', '2023'),
    ('Percakapan Masa Lalu', 'Adimas Immanuel', 'Gramedia Pustaka Utama', '2023'),
    ('Aroma Karsa', 'Dewi Lestari', 'Bentang Pustaka', '2023'),
    ('Luka', 'Alvi Syahrin', 'GagasMedia', '2023'),
    ('Surat Kecil untuk Ayah', 'Boy Candra', 'MediaKita', '2023'),
    ('Seribu Cahaya di Langit Jakarta', 'Ardhi Ridwansyah', 'Pastel Books', '2023'),
    ('Garis Waktu', 'Fiersa Besari', 'MediaKita', '2023'),
    ('Hati Suhita', 'Khairul Aksan', 'MediaKita', '2023'),
    ('Kompas Rindu', 'Sitta Karina', 'Gramedia Pustaka Utama', '2023'),
    ('Aksara Cinta', 'Boy Candra', 'MediaKita', '2023'),
    ('Sebiru Lautan', 'Maudy Ayunda', 'Gramedia Pustaka Utama', '2023'),
    ('Percakapan dengan Tuhan', 'Dewi Lestari', 'Bentang Pustaka', '2023'),
    ('Tuhan, Aku Ingin Pulang', 'Tasaro GK', 'Mizan', '2023');

SELECT*FROM Buku;

--Menambahkan data peminjaman--

INSERT INTO Peminjaman (id_anggota, id_buku, id_petugas, Tanggal_Peminjaman) VALUES
	(1, 1, 1, '2023-01-01'),
	(2, 2, 2, '2023-01-02'),
	(3, 3, 3, '2023-01-03'),
	(4, 4, 4, '2023-01-04'),
	(5, 5, 5, '2023-01-05'),
	(6, 6, 6, '2023-01-06'),
	(7, 7, 7, '2023-01-07'),
	(8, 8, 8, '2023-01-08'),
	(9, 9, 9, '2023-01-09'),
	(10, 10, 10, '2023-01-10'),
	(11, 11, 11, '2023-01-11'),
	(12, 12, 12, '2023-01-12'),
	(13, 13, 13, '2023-01-13'),
	(14, 14, 14, '2023-01-14'),
	(15, 15, 15, '2023-01-15'),
	(16, 16, 16, '2023-01-16'),
	(17, 17, 17, '2023-01-17'),
	(18, 18, 18, '2023-01-18'),
	(19, 19, 19, '2023-01-19'),
	(20, 20, 20, '2023-01-20'),
	(21, 21, 21, '2023-01-21'),
	(22, 22, 22, '2023-01-22'),
	(23, 23, 23, '2023-01-23'),
	(24, 24, 24, '2023-01-24'),
	(25, 25, 25, '2023-01-25'),
	(26, 26, 26, '2023-01-26'),
	(27, 27, 27, '2023-01-27'),
	(28, 28, 28, '2023-01-28'),
	(29, 29, 29, '2023-01-29'),
	(30, 30, 30, '2023-01-30');

SELECT*FROM Peminjaman;

--menambahkan data pengembalian--
INSERT INTO Pengembalian (id_peminjaman, id_petugas, Tanggal_Pengembalian) VALUES
	(1, 1, '2023-01-05'),
	(2, 2, '2023-01-06'),
	(3, 3, '2023-01-07'),
	(4, 4, '2023-01-08'),
	(5, 5, '2023-01-09'),
	(6, 6, '2023-01-10'),
	(7, 7, '2023-01-11'),
	(8, 8, '2023-01-12'),
	(9, 9, '2023-01-13'),
	(10, 10, '2023-01-14'),
	(11, 11, '2023-01-15'),
	(12, 12, '2023-01-16'),
	(13, 13, '2023-01-17'),
	(14, 14, '2023-01-18'),
	(15, 15, '2023-01-19'),
	(16, 16, '2023-01-20'),
	(17, 17, '2023-01-21'),
	(18, 18, '2023-01-22'),
	(19, 19, '2023-01-23'),
	(20, 20, '2023-01-24'),
	(21, 21, '2023-01-25'),
	(22, 22, '2023-01-26'),
	(23, 23, '2023-01-27'),
	(24, 24, '2023-01-28'),
	(25, 25, '2023-01-29'),
	(26, 26, '2023-01-30'),
	(27, 27, '2023-01-31'),
	(28, 28, '2023-02-01'),
	(29, 29, '2023-02-02'),
	(30, 30, '2023-02-03');

SELECT*FROM Pengembalian;