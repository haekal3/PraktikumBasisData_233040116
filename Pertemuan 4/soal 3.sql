SELECT * 
FROM mahasiswa;

SELECT COUNT(mahasiswa_id) AS jumlah_total_mahasiswa_informatika
FROM mahasiswa
WHERE jurusan = 'Teknik Informatika';