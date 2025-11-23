-- Nama  : Fatmawati
-- Nim   : D0224024

--Menggunakan Where dan Between dalam table 

-- WHERE
SELECT * FROM dosen WHERE jurusan = 'Informatika';
+----------+--------------------+-------------+--------------+
| id_dosen | nama_dosen         | jurusan     | no_hp        |
+----------+--------------------+-------------+--------------+
|        1 | Dr. Budi Santoso   | Informatika | 081234567801 |
|        3 | Dr. Ahmad Yusuf    | Informatika | 081234567803 |
|        6 | Dr. Tina Rahmawati | Informatika | 081234567806 |
|        8 | Dr. Rina Kurnia    | Informatika | 081234567808 |
|       11 | Dr. Anisa Putri    | Informatika | 081234567811 |
|       13 | Dr. Riko Saputra   | Informatika | 081234567813 |
|       15 | Dr. Bayu Setiawan  | Informatika | 081234567815 |
+----------+--------------------+-------------+--------------+

SELECT * FROM mahasiswa WHERE semester = 3;
+----------+---------------+------------------+----------+
| nim      | nama          | prodi            | semester |
+----------+---------------+------------------+----------+
|  2023001 | Andi Saputra  | Informatika      |        3 |
|  2023006 | Nadia Rahma   | Sistem Informasi |        3 |
| 20230112 | Cindy Oktavia | Sistem Informasi |        3 |
+----------+---------------+------------------+----------+

SELECT * FROM nilai WHERE nilai > 85;
+----------+----------+----------+--------------------+-------+
| id_nilai | nim      | id_dosen | mata_kuliah        | nilai |
+----------+----------+----------+--------------------+-------+
|        2 |  2023002 |        2 | Basis Data         |    90 |
|        5 |  2023005 |        5 | Sistem Operasi     |    88 |
|        6 |  2023006 |        6 | Web Programming    |    92 |
|        8 |  2023008 |        8 | Machine Learning   |    89 |
|        9 |  2023009 |        9 | Analisis Sistem    |    86 |
|       11 |  2023011 |       11 | Kecerdasan Buatan  |    93 |
|       15 | 20230115 |       15 | Pemrograman Lanjut |    88 |
+----------+----------+----------+--------------------+-------+

---------------------------------------------------------------
-- BETWEEN
SELECT * FROM nilai WHERE nilai BETWEEN 80 AND 90;
+----------+----------+----------+--------------------+-------+
| id_nilai | nim      | id_dosen | mata_kuliah        | nilai |
+----------+----------+----------+--------------------+-------+
|        1 |  2023001 |        1 | Algoritma          |    85 |
|        2 |  2023002 |        2 | Basis Data         |    90 |
|        3 |  2023003 |        3 | Pemrograman        |    80 |
|        5 |  2023005 |        5 | Sistem Operasi     |    88 |
|        8 |  2023008 |        8 | Machine Learning   |    89 |
|        9 |  2023009 |        9 | Analisis Sistem    |    86 |
|       10 |  2023010 |       10 | Keamanan Jaringan  |    82 |
|       13 | 20230113 |       13 | Struktur Data      |    84 |
|       15 | 20230115 |       15 | Pemrograman Lanjut |    88 |
+----------+----------+----------+--------------------+-------+

SELECT * FROM mahasiswa WHERE nim BETWEEN 2023005 AND 2023010;
+---------+----------------+------------------+----------+
| nim     | nama           | prodi            | semester |
+---------+----------------+------------------+----------+
| 2023005 | Fajar Ramadhan | Informatika      |        5 |
| 2023006 | Nadia Rahma    | Sistem Informasi |        3 |
| 2023007 | Arif Prabowo   | Teknik Komputer  |        2 |
| 2023008 | Lala Safitri   | Informatika      |        6 |
| 2023009 | Sofyan Hadi    | Sistem Informasi |        1 |
| 2023010 | Bella Kartika  | Teknik Komputer  |        4 |
+---------+----------------+------------------+----------+

SELECT * FROM dosen WHERE id_dosen BETWEEN 5 AND 10;
+----------+--------------------+------------------+--------------+
| id_dosen | nama_dosen         | jurusan          | no_hp        |
+----------+--------------------+------------------+--------------+
|        5 | Dr. Rudi Hartono   | Sistem Informasi | 081234567805 |
|        6 | Dr. Tina Rahmawati | Informatika      | 081234567806 |
|        7 | Dr. Hendri Pratama | Teknik Komputer  | 081234567807 |
|        8 | Dr. Rina Kurnia    | Informatika      | 081234567808 |
|        9 | Dr. Suryo Wibowo   | Sistem Informasi | 081234567809 |
|       10 | Dr. Maya Sari      | Teknik Komputer  | 081234567810 |
+----------+--------------------+------------------+--------------+
