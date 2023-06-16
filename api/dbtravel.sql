--
-- File generated with SQLiteStudio v3.4.4 on Sat Jun 10 16:15:11 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Bus
CREATE TABLE IF NOT EXISTS Bus (id_bus INTEGER PRIMARY KEY NOT NULL, id_mitra TEXT NOT NULL REFERENCES mitra (id_mitra), nama_bus TEXT NOT NULL, kapasitas_bus INTEGER, kelas_bus TEXT);
INSERT INTO Bus (id_bus, id_mitra, nama_bus, kapasitas_bus, kelas_bus) VALUES (1, '1', 'transA', 12, 'ekonomi');
INSERT INTO Bus (id_bus, id_mitra, nama_bus, kapasitas_bus, kelas_bus) VALUES (2, '2', 'arnesM', 12, 'bisnis');
INSERT INTO Bus (id_bus, id_mitra, nama_bus, kapasitas_bus, kelas_bus) VALUES (3, '1', 'transB', 12, 'bisnis');
INSERT INTO Bus (id_bus, id_mitra, nama_bus, kapasitas_bus, kelas_bus) VALUES (4, '3', 'fastest', 12, 'ekonomi');

-- Table: Jadwal
CREATE TABLE IF NOT EXISTS Jadwal (jadwal_id INTEGER PRIMARY KEY NOT NULL, bus_id INTEGER REFERENCES Bus (id_bus) NOT NULL, rute_id INTEGER REFERENCES Rute (rute_id) NOT NULL, waktu_berangkat TEXT NOT NULL, waktu_tiba TEXT NOT NULL, harga TEXT NOT NULL, nomor_kursi INTEGER NOT NULL);
INSERT INTO Jadwal (jadwal_id, bus_id, rute_id, waktu_berangkat, waktu_tiba, harga, nomor_kursi) VALUES (1, 1, 1, '09.00', '11.00', '60.000', 11);
INSERT INTO Jadwal (jadwal_id, bus_id, rute_id, waktu_berangkat, waktu_tiba, harga, nomor_kursi) VALUES (2, 2, 2, '16.00', '19.00', '75.000', 10);
INSERT INTO Jadwal (jadwal_id, bus_id, rute_id, waktu_berangkat, waktu_tiba, harga, nomor_kursi) VALUES (3, 3, 3, '21.00', '02.00', '100.000', 14);

-- Table: kota
CREATE TABLE IF NOT EXISTS kota (id_kota INTEGER PRIMARY KEY NOT NULL, nama_kota TEXT NOT NULL);
INSERT INTO kota (id_kota, nama_kota) VALUES (1, 'Bandung');
INSERT INTO kota (id_kota, nama_kota) VALUES (2, 'Jakarta');
INSERT INTO kota (id_kota, nama_kota) VALUES (3, 'Cirebon');

-- Table: mitra
CREATE TABLE IF NOT EXISTS mitra (id_mitra INTEGER PRIMARY KEY NOT NULL, nama_mitra TEXT NOT NULL, email_mitra TEXT NOT NULL, nomor_telepon_mitra TEXT NOT NULL, password_mitra TEXT NOT NULL);
INSERT INTO mitra (id_mitra, nama_mitra, email_mitra, nomor_telepon_mitra, password_mitra) VALUES (1, 'TRANSAGEN', 'transagen@gmail.com', '087784657765', 'trangsgen');
INSERT INTO mitra (id_mitra, nama_mitra, email_mitra, nomor_telepon_mitra, password_mitra) VALUES (2, 'arnesshuttle', 'arns@gmail.com', '08665478876', 'arennesshut');
INSERT INTO mitra (id_mitra, nama_mitra, email_mitra, nomor_telepon_mitra, password_mitra) VALUES (3, 'fartravel', 'frtrvl@gmail.com', '089786344465', 'frtrvl');

-- Table: Pemesanan
CREATE TABLE IF NOT EXISTS Pemesanan (pemesanan_id INTEGER PRIMARY KEY NOT NULL, waktu_pesanan TEXT NOT NULL, waktu_bayar TEXT, jumlah_penumpang INTEGER NOT NULL, total_harga TEXT NOT NULL, status_pesanan TEXT NOT NULL);
INSERT INTO Pemesanan (pemesanan_id, waktu_pesanan, waktu_bayar, jumlah_penumpang, total_harga, status_pesanan) VALUES (1, '07.00', '07.15', 2, '120.000', 'selesai');
INSERT INTO Pemesanan (pemesanan_id, waktu_pesanan, waktu_bayar, jumlah_penumpang, total_harga, status_pesanan) VALUES (2, '15.00', NULL, 1, '75.000', 'belum bayar');
INSERT INTO Pemesanan (pemesanan_id, waktu_pesanan, waktu_bayar, jumlah_penumpang, total_harga, status_pesanan) VALUES (3, '18.00', '20.00', 4, '400.000', 'selesai');

-- Table: Rute
CREATE TABLE IF NOT EXISTS Rute (rute_id INTEGER NOT NULL PRIMARY KEY, id_terminalberangkat INTEGER NOT NULL REFERENCES terminal (id_terminal), id_terminaltujuan INTEGER REFERENCES terminal (id_terminal) NOT NULL, jarak INTEGER NOT NULL);
INSERT INTO Rute (rute_id, id_terminalberangkat, id_terminaltujuan, jarak) VALUES (1, 1, 2, 150);
INSERT INTO Rute (rute_id, id_terminalberangkat, id_terminaltujuan, jarak) VALUES (2, 1, 3, 200);
INSERT INTO Rute (rute_id, id_terminalberangkat, id_terminaltujuan, jarak) VALUES (3, 2, 3, 350);

-- Table: terminal
CREATE TABLE IF NOT EXISTS terminal (id_terminal INTEGER PRIMARY KEY NOT NULL, id_kota INTEGER NOT NULL, nama_terminal TEXT NOT NULL, alamat_terminal TEXT, FOREIGN KEY (id_kota) REFERENCES kota (id_kota));
INSERT INTO terminal (id_terminal, id_kota, nama_terminal, alamat_terminal) VALUES (1, 1, 'Baltos', 'jl.tamansari');
INSERT INTO terminal (id_terminal, id_kota, nama_terminal, alamat_terminal) VALUES (2, 2, 'Gambir', 'jl.gambir');
INSERT INTO terminal (id_terminal, id_kota, nama_terminal, alamat_terminal) VALUES (3, 3, 'Jaka', 'jl.susetyo');

-- Table: Tiket
CREATE TABLE IF NOT EXISTS Tiket (tiket_id INTEGER PRIMARY KEY NOT NULL, pemesanan_id INTEGER REFERENCES Pemesanan (pemesanan_id) NOT NULL, jadwal_id INTEGER REFERENCES Jadwal (jadwal_id) NOT NULL, nama_penumpang TEXT NOT NULL, status_tiket TEXT NOT NULL);
INSERT INTO Tiket (tiket_id, pemesanan_id, jadwal_id, nama_penumpang, status_tiket) VALUES (1, 1, 1, 'harold, aldi', 'valid');
INSERT INTO Tiket (tiket_id, pemesanan_id, jadwal_id, nama_penumpang, status_tiket) VALUES (2, 3, 3, 'fakhri, ridwan, alya, aldi', 'valid');

-- Table: user
CREATE TABLE IF NOT EXISTS user (id_user INTEGER PRIMARY KEY NOT NULL, nama_user TEXT NOT NULL, nomor_teleponuser TEXT NOT NULL, email_user TEXT NOT NULL, password_user TEXT NOT NULL);
INSERT INTO user (id_user, nama_user, nomor_teleponuser, email_user, password_user) VALUES (1, 'Aldi', '082112345678', 'aldi@gmail.com', 'aldi1');
INSERT INTO user (id_user, nama_user, nomor_teleponuser, email_user, password_user) VALUES (2, 'Alya', '082298765432', 'alya@yahoo.com', 'alya2');
INSERT INTO user (id_user, nama_user, nomor_teleponuser, email_user, password_user) VALUES (3, 'Fakhri', '087897531468', 'fakhri@email.com', 'fakhri3');
INSERT INTO user (id_user, nama_user, nomor_teleponuser, email_user, password_user) VALUES (4, 'Harold', '089618372648', 'harold@ymail.com', 'harold4');
INSERT INTO user (id_user, nama_user, nomor_teleponuser, email_user, password_user) VALUES (5, 'Ridwan', '081347865832', 'ridwan@git.com', 'ridwan5');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
