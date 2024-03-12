/* Membuat Base table */

CREATE TABLE kf_base_table AS (
    select
    	pjln.id_distributor,
    	pjln.id_cabang,
        concat(pjln.id_invoice, '-' ,pjln.id_barang) as id_penjualan,
    	pjln.id_invoice,
        pjln.tanggal,
        pjln.id_customer,
        pjln.id_barang,
        pjln.jumlah_barang,
        pjln.unit,
        pjln.harga,
        pjln.mata_uang,
        plgn.level,
        plgn.nama,
        plgn.id_cabang_sales,
        plgn.cabang_sales,
        plgn.id_grup,
        plgn.grup,
        brg.kode_barang,
        brg.nama_barang,
        brg.nama_tipe,
        brg.kode_lini,
        brg.lini,
        brg.kemasan
    FROM
        penjualan AS pjln
        LEFT JOIN pelanggan AS plgn ON plgn.id_customer = pjln.id_customer
        LEFT JOIN barang AS brg ON brg.kode_barang = pjln.id_barang
    ORDER BY
        pjln.tanggal
);

-- Define Primary Key nya
ALTER TABLE kf_base_table ADD PRIMARY KEY(id_penjualan);

-- Save ke CSV
copy kf_base_table TO '/Users/rifalditajrial/Downloads/Kimia Farma Base Table.csv' WITH CSV HEADER;

