import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  factory DatabaseHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'library.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE buku(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        judul TEXT,
        pengarang TEXT,
        penerbit TEXT,
        tahun_terbit INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE peminjaman(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        anggota TEXT,
        buku TEXT,
        tanggal_pinjam TEXT,
        tanggal_kembali TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE pengembalian(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        peminjaman_id INTEGER,
        tanggal_dikembalikan TEXT,
        terlambat TEXT,
        denda INTEGER
      )
    ''');
  }

  Future<int> insertBuku(Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert('buku', data);
  }

  Future<List<Map<String, dynamic>>> getBukuList() async {
    final db = await database;
    return await db.query('buku');
  }

  Future<int> updateBuku(Map<String, dynamic> data, int id) async {
    final db = await database;
    return await db.update(
      'buku',
      data,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteBuku(int id) async {
    final db = await database;
    return await db.delete(
      'buku',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Fungsi CRUD untuk Buku, Peminjaman, dan Pengembalian
}
