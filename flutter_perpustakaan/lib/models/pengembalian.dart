class Pengembalian {
  final int? id;
  final String tanggalDikembalikan;
  final bool terlambat;
  final int denda;
  final int peminjamanId;

  Pengembalian(
      {this.id,
      required this.tanggalDikembalikan,
      required this.terlambat,
      required this.denda,
      required this.peminjamanId});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tanggal_dikembalikan': tanggalDikembalikan,
      'terlambat': terlambat ? 1 : 0,
      'denda': denda,
      'peminjaman': peminjamanId,
    };
  }

  static Pengembalian fromMap(Map<String, dynamic> map) {
    return Pengembalian(
      id: map['id'],
      tanggalDikembalikan: map['tanggal_dikembalikan'],
      terlambat: map['terlambat'] == 1,
      denda: map['denda'],
      peminjamanId: map['peminjaman'],
    );
  }
}
