import 'package:flutter/material.dart';
import '../widgets/pengembalian_form.dart';

class PengembalianScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pengembalian'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Jumlah data pengembalian yang akan ditampilkan
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Pengembalian Buku $index'),
                  subtitle: Text('Terlambat: Ya'),
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
                  builder: (_) => PengembalianForm(),
                );
              },
              child: Text('Tambah Pengembalian'),
            ),
          ),
        ],
      ),
    );
  }
}
