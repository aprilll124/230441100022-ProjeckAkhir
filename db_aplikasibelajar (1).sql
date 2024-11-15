-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2024 pada 15.52
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aplikasibelajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `mapel_id` int(11) NOT NULL,
  `jenjang` enum('SMP','SMA') NOT NULL,
  `nama_mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`mapel_id`, `jenjang`, `nama_mapel`) VALUES
(1, 'SMP', 'Bahasa Indonesia'),
(2, 'SMP', 'Bahasa Inggris'),
(3, 'SMP', 'Matematika'),
(4, 'SMP', 'Ilmu Pengetahuan Alam ( IPA )'),
(5, 'SMP', 'Ilmu Pengetahuan Sosial ( IPS )'),
(6, 'SMA', 'Bahasa Indonesia'),
(7, 'SMA', 'Bahasa Inggris'),
(8, 'SMA', 'Matematika'),
(9, 'SMA', 'Kimia'),
(10, 'SMA', 'Biologi'),
(11, 'SMA', 'Fisika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `materi_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `judul_materi` varchar(100) NOT NULL,
  `link_video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`materi_id`, `mapel_id`, `judul_materi`, `link_video`) VALUES
(1, 1, 'Puisi Rakyat', 'https://youtu.be/j46PDNbujwo?si=QvCBTLNr6eV_q2tZ'),
(2, 1, 'Teks Deskripsi', 'https://youtu.be/5PlX5FxrVVg?si=G1_8WpO37l2ihFrs'),
(3, 1, 'Teks Naratif', 'https://youtu.be/GRQm4x6GtAo?si=2HV51NH90mRCghEJ'),
(4, 1, ' Teks Prosedur', 'https://youtu.be/UayGZTwk1Tc?si=sXQ4rmv4oHp0w5Y3'),
(5, 1, 'Teks Berita', 'https://youtu.be/1g4gc663o6Q?si=eOFpd_MNl6KDR9Rg'),
(6, 2, 'Asking and Giving Permission', 'https://youtu.be/pAObyDIVbYY?si=whkHEt-wg2Y5u0h-'),
(7, 2, 'Present Continuous Tense ', 'https://youtu.be/AYxZLRB3uAE?si=yc_8RTVXyep6qCBQ'),
(8, 2, 'Simple Past Tense ', 'https://youtu.be/CApPEgntWag?si=rjyalmUQoKUjDrvh'),
(9, 2, 'Recount Text', 'https://youtu.be/ASP2AiAZYs0?si=INsjMew-PB1lcWAe'),
(10, 2, 'Procedure Text ', 'https://youtu.be/07tW8JcEg9w?si=CFycXt0JjIe8TF9R'),
(11, 3, 'Bilangan Bulat dan Pecahan', 'https://youtu.be/r-4fG7LB6Hw?si=FEc1J0HehHD8DzvE'),
(12, 3, 'Himpunan', 'https://youtu.be/ghCGbuBT-D0?si=W0CAkarYhIv6qnXL'),
(13, 3, 'Bentuk Aljabar', 'https://youtu.be/WsQJAhCU7Q8?si=tDaLQq8J3ToaMm5m'),
(14, 3, 'Persamaan dan Pertidaksamaan Linear satu Variabel', 'https://youtu.be/OJhDRcYojt8?si=Y-y3-gmGsFUDs8jG'),
(15, 3, 'Perbandingan', 'https://youtu.be/sop63Y5SSV4?si=CcSPiDIcnun89qa4'),
(16, 4, 'Klasifikasi makhluk hidup', 'https://youtu.be/Lyiwj0_0gXE?si=KUp48JaphVncckpT'),
(17, 4, 'Suhu dan Kalor', 'https://youtu.be/9D0x-u9LegE?si=p26fyqk87PamHqmH'),
(18, 4, 'Gerak Benda dan Makhluk Hidup', 'https://youtu.be/n9NtZaKbknw?si=tcYMBHW96pQSqNcY'),
(19, 4, 'Struktur dan Fungsi Tumbuhan', 'https://youtu.be/EztxwW0uD9I?si=hezDKD67oPyIiK8r'),
(20, 4, 'Sistem Pencernaan Manusia', 'https://youtu.be/8gvvB9POcVQ?si=bjiAf743N2pa945K'),
(21, 5, 'Sejarah Dalam Dimensi Ruang dan Waktu', 'https://youtu.be/g67Tbtgez1I?si=fWmCgZRBlYr5hvza'),
(22, 5, 'Syarat terjadinya interaksi antarruang', 'https://youtu.be/KVA3tOIlwB0?si=NPqDj-3nPaH3y1pc'),
(23, 5, 'Letak geografis Indonesia', 'https://youtu.be/1W-IIqZVGqg?si=6EQk4G9GLR9uCYkE'),
(24, 5, 'Potensi sumber daya alam Indonesia', 'https://youtu.be/3R-7uGBc5hY?si=L3vinka4h8Mr0vUE'),
(25, 5, 'jenis-jenis flora indonesia', 'https://youtu.be/N1bAOJ-x8tw?si=LQeWzbWAQUkQ-3TW'),
(26, 6, 'Laporan Hasil Observasi', 'https://youtu.be/Ooczzk1xPME?si=Bv6zMaqiph_zItcV'),
(27, 6, 'Teks Eksposisi', 'https://youtu.be/zgdWPivSB8c?si=MkiOaUjqdqpj7wRa'),
(28, 6, 'Teks Anekdot', 'https://youtu.be/E12M7-HTpSI?si=33GpZ-kzkC9TtFwc'),
(29, 6, 'Hikayat', 'https://youtu.be/i4ozP9VCC8s?si=woOqYOgfDRLZ6eQh'),
(30, 6, 'Teks Negosiasi', 'https://youtu.be/q0htdAfh4AE?si=b2uc4XL9QG0ZaWYg'),
(31, 7, 'Present Perfect tense', 'https://youtu.be/j8VuvXJOPcI?si=bJ-VqTZeDjbpLstR'),
(32, 7, 'Recount text', 'https://youtu.be/zGRZlDudZtI?si=HLwezcHELfAS7ggX'),
(33, 7, 'Simple future tense', 'https://youtu.be/CUdzz0jzK-Y?si=pzrUMNJFkQcmukfM'),
(34, 7, 'Past continuous tense', 'https://youtu.be/iZ58Ruc-Nps?si=g1rep0RQdpgYkggD'),
(35, 7, 'Past perfect tense ', 'https://youtu.be/lvL9RXmlquY?si=Z0gBkiTs93-w3SGy'),
(36, 8, 'Aritmetika', 'https://youtu.be/r-4fG7LB6Hw?si=FEc1J0HehHD8DzvE'),
(37, 8, 'Geometri', 'https://youtu.be/asyPBLi5LW0?si=LiozYw-RcppzZvvu'),
(38, 8, 'Aljabar', 'https://youtu.be/BbwvwIcImMI?si=g8elw40vtab5TL_E'),
(39, 8, 'Geometri', 'https://youtu.be/2iTbfPEMCeo?si=83FgJsYDsiJpmh6J'),
(40, 8, 'Kalkulus', 'https://youtu.be/4lgPiAITfuk?si=JLLYBm4984lcn7Pf'),
(41, 9, 'Atom', 'https://youtu.be/PCLGgeZbEZU?si=9pF7gP3z1s1KVdkj'),
(42, 9, 'Bilangan Kuantum', 'https://youtu.be/6RhIEiga-yE?si=IpxCx_APAdA878R9'),
(43, 9, 'Konfigurasi Elektron', 'https://youtu.be/c6aQPwRnUw0?si=TD4g6WZbtfkE7pAt'),
(44, 9, 'Elektron Valensi', 'https://youtu.be/Qbb9tElf5Tg?si=5UWjdz9ZY9KJ1wzd'),
(45, 9, 'Sistem Periodik Unsur', 'https://youtu.be/gDaSgHlqUH0?si=MLI5R1VNouzKvq-o'),
(46, 10, 'Virus', 'https://youtu.be/8glI_X1XoBE?si=IYgyGcaiguwNk3k2'),
(47, 10, 'Fungi', 'https://youtu.be/mtx7xk-7KqQ?si=yrhdBctqbDQ00HwJ'),
(48, 10, 'Plantae', 'https://youtu.be/zFA563HWf8g?si=FdRtO17bw5nqtez4'),
(49, 10, 'Animalia', 'https://youtu.be/hgfRmCXHzlw?si=h01Su8sS_UZ5dhCT'),
(50, 10, 'Ekosistem', 'https://youtu.be/IVm9sgRVp-0?si=Kr8NAZ6Hq866ys28'),
(51, 11, 'Hukum Newton', 'https://youtu.be/RKQ4LDHV6KM?si=hexp-TelwgwZqBOD'),
(52, 11, 'Jangka Sorong', 'https://youtu.be/IkgJM3X_7Ks?si=3O6mNkZQDfkmqX79'),
(53, 11, 'Besaran Pokok dan Besaran Turunan', 'https://youtu.be/aBuZklAPeb4?si=k71GsmScoKTYRuTA'),
(54, 11, 'Impuls dan Momentum', 'https://youtu.be/l6SVStydZT4?si=xZMIf1996nyNU9H3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `study_goals`
--

CREATE TABLE `study_goals` (
  `goal_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `materi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `study_goals`
--

INSERT INTO `study_goals` (`goal_id`, `username`, `materi_id`) VALUES
(17, 'Lanny', 3),
(15, 'Lanny', 19),
(19, 'Lanny', 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `username` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`username`, `password`, `email`) VALUES
('kirana', 'kirana2', 'jns@gmail'),
('la', 'laa', 'a'),
('Lajb', 'jsb', 'snxx'),
('Lanny', 'bhs', 'lanny2'),
('Lanny2', 'lanny2', 'njds');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`mapel_id`) USING BTREE;

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`materi_id`) USING BTREE,
  ADD KEY `mapel_id` (`mapel_id`) USING BTREE;

--
-- Indeks untuk tabel `study_goals`
--
ALTER TABLE `study_goals`
  ADD PRIMARY KEY (`goal_id`),
  ADD KEY `user_id` (`username`,`materi_id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `materi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `study_goals`
--
ALTER TABLE `study_goals`
  MODIFY `goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_ibfk_1` FOREIGN KEY (`mapel_id`) REFERENCES `mata_pelajaran` (`mapel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `study_goals`
--
ALTER TABLE `study_goals`
  ADD CONSTRAINT `study_goals_ibfk_1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`materi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `study_goals_ibfk_2` FOREIGN KEY (`username`) REFERENCES `tb_pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
