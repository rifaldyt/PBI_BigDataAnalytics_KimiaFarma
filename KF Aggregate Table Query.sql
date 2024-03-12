create table kf_aggregate_table as (
	select 
		id_penjualan,
		id_invoice,
		tanggal, 
		id_customer, 
		id_barang, 
		jumlah_barang, 
		harga, 
		nama as nama_customer, 
		id_cabang_sales, 
		cabang_sales, 
		grup, 
		nama_barang as produk, 
		kemasan, 
		nama_tipe,
		kode_lini,
		lini, 
		ROUND((jumlah_barang * harga)::numeric, 2) AS total_sales
	from kf_base_table
	group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
);