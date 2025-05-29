class Kos {
  final String id;
  final String nama;
  final String alamat;
  final DateTime? createdAt;

  Kos({
    required this.id,
    required this.nama,
    required this.alamat,
    this.createdAt,
  });

  factory Kos.fromJson(Map<String, dynamic> json) {
    return Kos(
      id: json['id']?.toString() ?? '',
      nama: json['nama']?.toString() ?? '',
      alamat: json['alamat']?.toString() ?? '',
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
    );
  }
}
