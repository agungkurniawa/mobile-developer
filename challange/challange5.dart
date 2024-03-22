void main() {
  EWallet dompetAgung = new EWallet('Agung kurniawan');
  print('----Nilai Awal----');
  print(dompetAgung.getNama);
  print(dompetAgung.getSaldo);
  print(dompetAgung.getMutasi);
  print('----Request----');
  dompetAgung.Request(2000000);
  print(dompetAgung.getSaldo);
  print(dompetAgung.getMutasi);
  print('---- Transfer----');
  dompetAgung.transfer(500000);
  print(dompetAgung.getSaldo);
  print(dompetAgung.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo -= nominal;
    addMutasi('Transfer $nominal');
  }

  Request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}