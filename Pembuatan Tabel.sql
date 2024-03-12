-- Tabel Penjualan

CREATE TABLE tugas_kf.penjualan (
    id_distributor VARCHAR(4) NOT NULL,
    id_cabang VARCHAR(5),
    id_invoice VARCHAR(6),
    tanggal DATE,
    id_customer VARCHAR(10),
    id_barang VARCHAR(7),
    jumlah_barang DECIMAL,
    unit VARCHAR(3),
    harga DECIMAL(10, 2),
    mata_uang VARCHAR(3),
    brand_id VARCHAR(7),
    lini VARCHAR(12),
    primary key(id_invoice)
);

-- Tabel Pelanggan
create table tugas_kf.pelanggan(
	id_customer varchar(10)not null,
	level varchar(7),
	nama varchar (100),
	id_cabang_sales varchar(5),
	cabang_sales varchar(30), 
	id_grup varchar(3),
	grup varchar(30),
	primary key (id_customer)
);

--Tabel Barang 
create table tugas_kf.barang(
	kode_barang varchar(7) not null,
	sektor varchar(1),
	nama_barang varchar(50),
	tipe varchar(4),
	nama_tipe varchar(20),
	kode_lini int, 
	lini varchar(15),
	kemasan varchar(20),
	primary key (kode_barang)
);
