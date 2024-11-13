import 'package:flutter/material.dart';

class PengembalianForm extends StatelessWidget {
  final TextEditingController tanggalDikembalikanController =
      TextEditingController();
  final TextEditingController terlambatController = TextEditingController();
  final TextEditingController dendaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: tanggalDikembalikanController,
            decoration: InputDecoration(labelText: 'Tanggal Dikembalikan'),
          ),
          TextField(
            controller: terlambatController,
            decoration: InputDecoration(labelText: 'Terlambat (Ya/Tidak)'),
          ),
          TextField(
            controller: dendaController,
            decoration: InputDecoration(labelText: 'Denda'),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyimpan data pengembalian ke database
              Navigator.of(context).pop();
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
