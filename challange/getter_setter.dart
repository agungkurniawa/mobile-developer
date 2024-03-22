/* getter setter digunakan untuk menetapkan sebuah nilai pada properti
dan bisa diambil kembali nilainya*/

void main() {
  RekeningBank rekeningAgung = new RekeningBank();
  rekeningAgung.namaPemilik = 'Agung kurniawan';
  rekeningAgung.namaBank = 'BRI';
  rekeningAgung.saldo = 100000;

  print(rekeningAgung.saldo);
  print(rekeningAgung.namaBank);
  print(rekeningAgung.namaPemilik);

  rekeningAgung.ceksaldo();
  print('-------------------------');

  // membuat objek baru
  RekeningBank rekeningAgungkur = new RekeningBank(
      namaPemilik: 'Agung kurniawan', namaBank: 'BNI', saldo: 500000);

  print(rekeningAgungkur.namaPemilik);
  print(rekeningAgungkur.namaBank);
  print(rekeningAgungkur.saldo);
  rekeningAgungkur.ceksaldo();
  print('---------------------');

  RekeningBank rekeningkurniawan = new RekeningBank(
    namaPemilik: 'kurniawan',
    namaBank: 'Bank Mandiri',
    saldo: 120000,
  );

  print(rekeningkurniawan.getPemilik);
  print(rekeningkurniawan.getBank);
  print(rekeningkurniawan.saldo);
  rekeningkurniawan.setSaldo = 250000;
  print(rekeningkurniawan.saldo);
  rekeningkurniawan.setNamaPemilik = 'Agung kurniawan';
  rekeningkurniawan.setNamaBank = 'BCA';
  print(rekeningkurniawan.getPemilik);
  print(rekeningkurniawan.getBank);
  print(rekeningkurniawan.getSaldo);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  int saldo;

  // membuat set getter setter
  set setNamaPemilik(var nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String namabank) {
    this.namaBank = namabank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional
  RekeningBank({this.namaPemilik, this.namaBank, this.saldo = 0});

  ceksaldo() {
    print('Saldo saat ini adalah : $saldo');
  }

  transfer() {
    print('Transfer ');
  }

  ambilsaldo() {
    print('ambil saldo');
  }
}