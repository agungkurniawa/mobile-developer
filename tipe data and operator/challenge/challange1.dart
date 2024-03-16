void main() {
  // mendeklarasi variabel sesuai persyaratan challenge !
  String nama = 'Agung kurniawan'; // tipe data string
  int tahunBerdiri = 2021; // tipe data int
  String pemilik = 'Agung kurniawan'; // tipe data string
  String alamat = 'bengkalis'; // tipe data string
  String telepon = '0822000000';  // tipe data string
  bool statusBuka = false; // tipe data boolean

  List<Map> makanan = [
    {
      'menu': 'Mie Rebus', 'harga': 10000
    },
    {
      'menu': 'Nasi Goreng Kampung', 'harga': 12.000
    },
    {
      'menu': 'Lomek Asam Pedas', 'harga': 10000
    },
    {
      'menu': 'Mie Sagu', 'harga': 10000
    }
  ]; // makanan bertipe data list namun data nya berisi map

  List<Map> minuman = [
    {
      'menu': 'Es Jeruk', 'harga': 5000
    },
    {
      'menu': 'Es Kelapa', 'harga': 10000
    },
    {
      'menu': 'Es Lemon tea', 'harga': 3000
    }
  ]; // minuman bertipe data list namun data nya berisi map

  print('Nama Pemilik restoran $nama adalah $pemilik, berdiri pada tahun $tahunBerdiri. Beralamat di $alamat, No Telp $telepon.\n Restoran Sedang ${(statusBuka) ? 'buka' : 'tutup'}');
  print('Di restoran $nama, terdapat menu makanan dan minuman seperti berikut !\n[ MAKANAN ]');
  
  makanan.forEach((data) {
    print('${data['menu']}\nHarga : ${data['harga']}');
  }); // menggunakan foreach untuk melakukan looping data map pada list

  print('\n[ MINUMAN ]');
  minuman.forEach((data) {
    print('${data['menu']}\nHarga : ${data['harga']}');
  }); // menggunakan foreach untuk melakukan looping data map pada list
}