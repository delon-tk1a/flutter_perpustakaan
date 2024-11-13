import 'package:flutter/material.dart';
import '../helpers/database_helper.dart';
import '../widgets/buku_form.dart';

class BukuScreen extends StatefulWidget {
  @override
  _BukuScreenState createState() => _BukuScreenState();
}

class _BukuScreenState extends State<BukuScreen> {
  List<Map<String, dynamic>> _bukuList = [];
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _refreshBukuList();
  }

  void _refreshBukuList() async {
    final data = await _dbHelper.getBukuList();
    setState(() {
      _bukuList = data;
    });
  }

  void _addBuku(
      String judul, String pengarang, String penerbit, int tahunTerbit) async {
    await _dbHelper.insertBuku({
      'judul': judul,
      'pengarang': pengarang,
      'penerbit': penerbit,
      'tahun_terbit': tahunTerbit,
    });
    _refreshBukuList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Buku'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _bukuList.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text(_bukuList[index]['judul']),
                  subtitle: Text('Pengarang: ${_bukuList[index]['pengarang']}'),
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
                  builder: (_) => BukuForm(onSubmit: _addBuku),
                );
              },
              child: Text('Tambah Buku'),
            ),
          ),
        ],
      ),
    );
  }
}
