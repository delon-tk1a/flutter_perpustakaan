import 'package:flutter/material.dart';
import '../widgets/anggota_form.dart';

class AnggotaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Anggota'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Sesuaikan dengan jumlah data anggota yang ada
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Nama Anggota $index'),
                  subtitle: Text('NIM $index'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => AnggotaForm(),
                );
              },
              child: Text('Tambah Anggota'),
            ),
          ),
        ],
      ),
    );
  }
}
