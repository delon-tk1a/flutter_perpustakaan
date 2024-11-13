import 'package:flutter/material.dart';

class BukuForm extends StatelessWidget {
  final Function(String, String, String, int) onSubmit;
  final TextEditingController judulController = TextEditingController();
  final TextEditingController pengarangController = TextEditingController();
  final TextEditingController penerbitController = TextEditingController();
  final TextEditingController tahunTerbitController = TextEditingController();

  BukuForm({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: judulController,
            decoration: InputDecoration(labelText: 'Judul Buku'),
          ),
          TextField(
            controller: pengarangController,
            decoration: InputDecoration(labelText: 'Pengarang'),
          ),
          TextField(
            controller: penerbitController,
            decoration: InputDecoration(labelText: 'Penerbit'),
          ),
          TextField(
            controller: tahunTerbitController,
            decoration: InputDecoration(labelText: 'Tahun Terbit'),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: () {
              onSubmit(
                judulController.text,
                pengarangController.text,
                penerbitController.text,
                int.parse(tahunTerbitController.text),
              );
              Navigator.of(context).pop();
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
