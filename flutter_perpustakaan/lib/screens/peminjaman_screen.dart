import 'package:flutter/material.dart';
import '../widgets/peminjaman_form.dart';

class PeminjamanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Peminjaman'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Jumlah data peminjaman yang akan ditampilkan
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Peminjam $index'),
                  subtitle: Text('Tanggal Pinjam: 2024-11-13'),
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
                  builder: (_) => PeminjamanForm(),
                );
              },
              child: Text('Tambah Peminjaman'),
            ),
          ),
        ],
      ),
    );
  }
}
