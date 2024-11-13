class Anggota {
  final int? id;
  final String nim;
  final String nama;
  final String alamat;
  final String jenisKelamin;

  Anggota(
      {this.id,
      required this.nim,
      required this.nama,
      required this.alamat,
      required this.jenisKelamin});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nim': nim,
      'nama': nama,
      'alamat': alamat,
      'jenis_kelamin': jenisKelamin,
    };
  }

  static Anggota fromMap(Map<String, dynamic> map) {
    return Anggota(
      id: map['id'],
      nim: map['nim'],
      nama: map['nama'],
      alamat: map['alamat'],
      jenisKelamin: map['jenis_kelamin'],
    );
  }
}
