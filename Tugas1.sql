-- Nama : Fatmawati 
-- Nim : D0224024

-- create database
CREATE DATABASE kampus;
USE kampus;

-----------------------------------------------------------
-- 1. Tabel DOSEN
-----------------------------------------------------------
CREATE TABLE dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(50),
    jurusan VARCHAR(50),
    no_hp VARCHAR(20)
);

-- Insert table dosen
INSERT INTO dosen VALUES
(1, 'Dr. Budi Santoso', 'Informatika', '081234567801'),
(2, 'Dr. Siti Aminah', 'Sistem Informasi', '081234567802'),
(3, 'Dr. Ahmad Yusuf', 'Informatika', '081234567803'),
(4, 'Dr. Lina Marlina', 'Teknik Komputer', '081234567804'),
(5, 'Dr. Rudi Hartono', 'Sistem Informasi', '081234567805'),
(6, 'Dr. Tina Rahmawati', 'Informatika', '081234567806'),
(7, 'Dr. Hendri Pratama', 'Teknik Komputer', '081234567807'),
(8, 'Dr. Rina Kurnia', 'Informatika', '081234567808'),
(9, 'Dr. Suryo Wibowo', 'Sistem Informasi', '081234567809'),
(10,'Dr. Maya Sari', 'Teknik Komputer', '081234567810'),
(11,'Dr. Anisa Putri', 'Informatika', '081234567811'),
(12,'Dr. Dadan Hidayat', 'Sistem Informasi', '081234567812'),
(13,'Dr. Riko Saputra', 'Informatika', '081234567813'),
(14,'Dr. Nita Purnama', 'Teknik Komputer', '081234567814'),
(15,'Dr. Bayu Setiawan', 'Informatika', '081234567815');

-----------------------------------------------------------
-- 2. Tabel MAHASISWA
-----------------------------------------------------------
CREATE TABLE mahasiswa (
    nim INT PRIMARY KEY,
    nama VARCHAR(50),
    prodi VARCHAR(50),
    semester INT
);

-- Insert table mahasiswa
INSERT INTO mahasiswa VALUES
(2023001, 'Andi Saputra', 'Informatika', 3),
(2023002, 'Rina Widya', 'Sistem Informasi', 2),
(2023003, 'Budi Setiawan', 'Informatika', 4),
(2023004, 'Tania Putri', 'Teknik Komputer', 1),
(2023005, 'Fajar Ramadhan', 'Informatika', 5),
(2023006, 'Nadia Rahma', 'Sistem Informasi', 3),
(2023007, 'Arif Prabowo', 'Teknik Komputer', 2),
(2023008, 'Lala Safitri', 'Informatika', 6),
(2023009, 'Sofyan Hadi', 'Sistem Informasi', 1),
(2023010, 'Bella Kartika', 'Teknik Komputer', 4),
(2023011, 'Gilbert Hutagaol', 'Informatika', 2),
(20230112,'Cindy Oktavia', 'Sistem Informasi', 3),
(20230113,'Niko Aditya', 'Informatika', 5),
(20230114,'Putra Sembiring', 'Teknik Komputer', 1),
(20230115,'Lidya Sari', 'Sistem Informasi', 4);

-----------------------------------------------------------
-- 3. Tabel NILAI
-----------------------------------------------------------
CREATE TABLE nilai (
    id_nilai INT PRIMARY KEY,
    nim INT,
    id_dosen INT,
    mata_kuliah VARCHAR(50),
    nilai INT,
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);

-- Insert table nilai
INSERT INTO nilai VALUES
(1, 2023001, 1, 'Algoritma', 85),
(2, 2023002, 2, 'Basis Data', 90),
(3, 2023003, 3, 'Pemrograman', 80),
(4, 2023004, 4, 'Jaringan Komputer', 75),
(5, 2023005, 5, 'Sistem Operasi', 88),
(6, 2023006, 6, 'Web Programming', 92),
(7, 2023007, 7, 'Arsitektur Komputer', 70),
(8, 2023008, 8, 'Machine Learning', 89),
(9, 2023009, 9, 'Analisis Sistem', 86),
(10,2023010, 10,'Keamanan Jaringan', 82),
(11,2023011, 11,'Kecerdasan Buatan', 93),
(12,20230112,12,'Manajemen Proyek', 77),
(13,20230113,13,'Struktur Data', 84),
(14,20230114,14,'Digital Design', 79),
(15,20230115,15,'Pemrograman Lanjut', 88);

-----------------------------------------------------------
-- MENAMPILKAN SEMUA TABLE
-----------------------------------------------------------
select * from dosen;
+----------+--------------------+------------------+--------------+
| id_dosen | nama_dosen         | jurusan          | no_hp        |
+----------+--------------------+------------------+--------------+
|        1 | Dr. Budi Santoso   | Informatika      | 081234567801 |
|        2 | Dr. Siti Aminah    | Sistem Informasi | 081234567802 |
|        3 | Dr. Ahmad Yusuf    | Informatika      | 081234567803 |
|        4 | Dr. Lina Marlina   | Teknik Komputer  | 081234567804 |
|        5 | Dr. Rudi Hartono   | Sistem Informasi | 081234567805 |
|        6 | Dr. Tina Rahmawati | Informatika      | 081234567806 |
|        7 | Dr. Hendri Pratama | Teknik Komputer  | 081234567807 |
|        8 | Dr. Rina Kurnia    | Informatika      | 081234567808 |
|        9 | Dr. Suryo Wibowo   | Sistem Informasi | 081234567809 |
|       10 | Dr. Maya Sari      | Teknik Komputer  | 081234567810 |
|       11 | Dr. Anisa Putri    | Informatika      | 081234567811 |
|       12 | Dr. Dadan Hidayat  | Sistem Informasi | 081234567812 |
|       13 | Dr. Riko Saputra   | Informatika      | 081234567813 |
|       14 | Dr. Nita Purnama   | Teknik Komputer  | 081234567814 |
|       15 | Dr. Bayu Setiawan  | Informatika      | 081234567815 |
+----------+--------------------+------------------+--------------+

select * from mahasiswa;
+----------+------------------+------------------+----------+
| nim      | nama             | prodi            | semester |
+----------+------------------+------------------+----------+
|  2023001 | Andi Saputra     | Informatika      |        3 |
|  2023002 | Rina Widya       | Sistem Informasi |        2 |
|  2023003 | Budi Setiawan    | Informatika      |        4 |
|  2023004 | Tania Putri      | Teknik Komputer  |        1 |
|  2023005 | Fajar Ramadhan   | Informatika      |        5 |
|  2023006 | Nadia Rahma      | Sistem Informasi |        3 |
|  2023007 | Arif Prabowo     | Teknik Komputer  |        2 |
|  2023008 | Lala Safitri     | Informatika      |        6 |
|  2023009 | Sofyan Hadi      | Sistem Informasi |        1 |
|  2023010 | Bella Kartika    | Teknik Komputer  |        4 |
|  2023011 | Gilbert Hutagaol | Informatika      |        2 |
| 20230112 | Cindy Oktavia    | Sistem Informasi |        3 |
| 20230113 | Niko Aditya      | Informatika      |        5 |
| 20230114 | Putra Sembiring  | Teknik Komputer  |        1 |
| 20230115 | Lidya Sari       | Sistem Informasi |        4 |
+----------+------------------+------------------+----------+

select * from nilai;
+----------+----------+----------+---------------------+-------+
| id_nilai | nim      | id_dosen | mata_kuliah         | nilai |
+----------+----------+----------+---------------------+-------+
|        1 |  2023001 |        1 | Algoritma           |    85 |
|        2 |  2023002 |        2 | Basis Data          |    90 |
|        3 |  2023003 |        3 | Pemrograman         |    80 |
|        4 |  2023004 |        4 | Jaringan Komputer   |    75 |
|        5 |  2023005 |        5 | Sistem Operasi      |    88 |
|        6 |  2023006 |        6 | Web Programming     |    92 |
|        7 |  2023007 |        7 | Arsitektur Komputer |    70 |
|        8 |  2023008 |        8 | Machine Learning    |    89 |
|        9 |  2023009 |        9 | Analisis Sistem     |    86 |
|       10 |  2023010 |       10 | Keamanan Jaringan   |    82 |
|       11 |  2023011 |       11 | Kecerdasan Buatan   |    93 |
|       12 | 20230112 |       12 | Manajemen Proyek    |    77 |
|       13 | 20230113 |       13 | Struktur Data       |    84 |
|       14 | 20230114 |       14 | Digital Design      |    79 |
|       15 | 20230115 |       15 | Pemrograman Lanjut  |    88 |
+----------+----------+----------+---------------------+-------+
