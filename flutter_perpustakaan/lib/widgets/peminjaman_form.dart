import 'package:flutter/material.dart';

class PeminjamanForm extends StatelessWidget {
  final TextEditingController anggotaController = TextEditingController();
  final TextEditingController bukuController = TextEditingController();
  final TextEditingController tanggalPinjamController = TextEditingController();
  final TextEditingController tanggalKembaliController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: anggotaController,
            decoration: InputDecoration(labelText: 'Nama Anggota'),
          ),
          TextField(
            controller: bukuController,
            decoration: InputDecoration(labelText: 'Judul Buku'),
          ),
          TextField(
            controller: tanggalPinjamController,
            decoration: InputDecoration(labelText: 'Tanggal Pinjam'),
          ),
          TextField(
            controller: tanggalKembaliController,
            decoration: InputDecoration(labelText: 'Tanggal Kembali'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyimpan data peminjaman ke database
              Navigator.of(context).pop();
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
