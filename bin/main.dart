import 'dart:io';

void main() {
  double saldo = 0.0;

  while (true) {
    print('\n=== Aplikasi Bank Sederhana ===');
    print('1. Cek Saldo');
    print('2. Deposit Saldo');
    print('3. Tarik Saldo');
    print('4. Keluar');
    stdout.write('Pilih menu (1-4): ');

    String? input = stdin.readLineSync();
    if (input == null || int.tryParse(input) == null) {
      print('Input tidak valid, coba lagi.');
      continue;
    }

    switch (int.parse(input)) {
      case 1:
        print('\nSaldo Anda saat ini: Rp ${saldo.toStringAsFixed(2)}');
        break;
      case 2:
        stdout.write('\nMasukkan jumlah deposit: Rp ');
        String? depositInput = stdin.readLineSync();
        double? deposit = double.tryParse(depositInput ?? '');
        if (deposit != null && deposit > 0) {
          saldo += deposit;
          print('Berhasil menambahkan Rp ${deposit.toStringAsFixed(2)} ke saldo.');
        } else {
          print('Input tidak valid, coba lagi.');
        }
        break;
      case 3:
        stdout.write('\nMasukkan jumlah yang ingin ditarik: Rp ');
        String? tarikInput = stdin.readLineSync();
        double? tarik = double.tryParse(tarikInput ?? '');
        if (tarik != null && tarik > 0 && tarik <= saldo) {
          saldo -= tarik;
          print('Berhasil menarik Rp ${tarik.toStringAsFixed(2)} dari saldo.');
        } else if (tarik != null && tarik > saldo) {
          print('Saldo tidak mencukupi.');
        } else {
          print('Input tidak valid, coba lagi.');
        }
        break;
      case 4:
        print('Terima kasih telah menggunakan aplikasi bank kami.');
        exit(0);
      default:
        print('Pilihan tidak tersedia, coba lagi.');
    }
  }
}
