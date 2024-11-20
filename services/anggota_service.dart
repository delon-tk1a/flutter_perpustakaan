import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../models/anggota.dart';

class AnggotaService {
  // URL API PHP yang mengambil data anggota
  static const String url = 'http://localhost/library_api';

  // Fungsi untuk mengambil data anggota dari API
  static Future<List<Anggota>> fetchAnggota() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Anggota.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load anggota');
    }
  }
}
