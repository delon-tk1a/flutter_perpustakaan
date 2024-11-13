import 'package:flutter/material.dart';

class AnggotaForm extends StatelessWidget {
  final TextEditingController nimController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController jenisKelaminController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: nimController,
            decoration: InputDecoration(labelText: 'NIM'),
          ),
          TextField(
            controller: namaController,
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          TextField(
            controller: alamatController,
            decoration: InputDecoration(labelText: 'Alamat'),
          ),
          TextField(
            controller: jenisKelaminController,
            decoration: InputDecoration(labelText: 'Jenis Kelamin'),
          ),
          ElevatedButton(
            onPressed: () {
              // Simpan data anggota ke database
              Navigator.of(context).pop();
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
