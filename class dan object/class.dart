// class adalah sebuah template atau blueprint
// sedangkan object adalah hasil dari realisasi class/object nyata
// di dalam class terdapat atribut/properti dan method/function

void main() {
  RekeningBank rekeningAgung = new RekeningBank();
  rekeningAgung.namaPemilik = 'Agung kurniawan';
  rekeningAgung.namaBank = 'BRI';
  rekeningAgung.saldo = 100000;

  print(rekeningAgung.saldo);
  print(rekeningAgung.namaBank);
  print(rekeningAgung.namaPemilik);

  rekeningAgung.ceksaldo();

  // membuat objek baru
  RekeningBank rekeningAgungkur = new RekeningBank(
      namaPemilik: 'Agung kurniawan', namaBank: 'BNI', saldo: 500000);

  print(rekeningAgungkur.saldo);
  print(rekeningAgungkur.ceksaldo());
  print(rekeningAgungkur.namaBank);
  print(rekeningAgungkur.namaPemilik);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;

  RekeningBank(
      {this.namaPemilik,
      this.namaBank,
      this.saldo}); //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional

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