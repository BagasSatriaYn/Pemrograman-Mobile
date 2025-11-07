void main() {
  Map<String, Map<String, dynamic>> barang = {
    'B001': {'nama': 'Pensil', 'harga': 2000, 'stok': 100},
    'B002': {'nama': 'Buku Tulis', 'harga': 5000, 'stok': 50},
    'B003': {'nama': 'Penghapus', 'harga': 1500, 'stok': 200},
    'B004': {'nama': 'Spidol', 'harga': 3000, 'stok': 80},
    'B005': {'nama': 'Penggaris', 'harga': 2500, 'stok': 120},
  };

  print("Data Barang:");
  barang.forEach((kode, info) {
    print("Kode: $kode, Nama: ${info['nama']}, Harga: ${info['harga']}, Stok: ${info['stok']}");
  });
}
