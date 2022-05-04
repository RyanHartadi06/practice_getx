import 'dart:convert';

BeritaModel beritaModelFromJson(String str) =>
    BeritaModel.fromJson(json.decode(str));

String beritaModelToJson(BeritaModel data) => json.encode(data.toJson());

class BeritaModel {
  BeritaModel({
    required this.meta,
    required this.response,
  });

  Meta meta;
  Response response;

  factory BeritaModel.fromJson(Map<String, dynamic> json) => BeritaModel(
        meta: Meta.fromJson(json["meta"]),
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "response": response.toJson(),
      };
}

class Meta {
  Meta({
    required this.code,
    required this.status,
    required this.message,
  });

  int code;
  bool status;
  String message;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        code: json["code"],
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
      };
}

class Response {
  Response({
    required this.message,
    required this.data,
  });

  String message;
  List<Berita> data;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        message: json["message"],
        data: List<Berita>.from(json["data"].map((x) => Berita.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Berita {
  Berita({
    required this.idBerita,
    required this.judulBerita,
    required this.deskripsi,
    required this.gambar,
    required this.aktif,
    required this.createdAt,
    required this.editedAt,
  });

  String idBerita;
  String judulBerita;
  String deskripsi;
  String gambar;
  String aktif;
  DateTime createdAt;
  DateTime editedAt;

  factory Berita.fromJson(Map<String, dynamic> json) => Berita(
        idBerita: json["id_berita"],
        judulBerita: json["judul_berita"],
        deskripsi: json["deskripsi"],
        gambar: json["gambar"],
        aktif: json["aktif"],
        createdAt: DateTime.parse(json["created_at"]),
        editedAt: DateTime.parse(json["edited_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id_berita": idBerita,
        "judul_berita": judulBerita,
        "deskripsi": deskripsi,
        "gambar": gambar,
        "aktif": aktif,
        "created_at": createdAt.toIso8601String(),
        "edited_at": editedAt.toIso8601String(),
      };
}
