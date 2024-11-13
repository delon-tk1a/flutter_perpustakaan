class Peminjaman {
  final int? id;
  final String tanggalPinjam;
  final String tanggalKembali;
  final int anggotaId;
  final int bukuId;

  Peminjaman(
      {this.id,
      required this.tanggalPinjam,
      required this.tanggalKembali,
      required this.anggotaId,
      required this.bukuId});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tanggal_pinjam': tanggalPinjam,
      'tanggal_kembali': tanggalKembali,
      'anggota': anggotaId,
      'buku': bukuId,
    };
  }

  static Peminjaman fromMap(Map<String, dynamic> map) {
    return Peminjaman(
      id: map['id'],
      tanggalPinjam: map['tanggal_pinjam'],
      tanggalKembali: map['tanggal_kembali'],
      anggotaId: map['anggota'],
      bukuId: map['buku'],
    );
  }
}
