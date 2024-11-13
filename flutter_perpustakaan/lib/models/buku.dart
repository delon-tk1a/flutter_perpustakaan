class Buku {
  final int? id;
  final String judul;
  final String pengarang;
  final String penerbit;
  final int tahunTerbit;

  Buku(
      {this.id,
      required this.judul,
      required this.pengarang,
      required this.penerbit,
      required this.tahunTerbit});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'judul': judul,
      'pengarang': pengarang,
      'penerbit': penerbit,
      'tahun_terbit': tahunTerbit,
    };
  }

  static Buku fromMap(Map<String, dynamic> map) {
    return Buku(
      id: map['id'],
      judul: map['judul'],
      pengarang: map['pengarang'],
      penerbit: map['penerbit'],
      tahunTerbit: map['tahun_terbit'],
    );
  }
}
