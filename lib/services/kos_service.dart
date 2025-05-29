import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/kos_model.dart';

class KosService {
  static final _supabase = Supabase.instance.client;

  // CREATE
  static Future<void> addKos(Kos kos) async {
    await _supabase.from('DataKos').insert({
      'nama': kos.nama,
      'alamat': kos.alamat,
    });
  }

  // READ
  static Future<List<Kos>> getAllKos() async {
    final response = await _supabase
        .from('DataKos')
        .select()
        .order('created_at', ascending: false);

    return (response as List).map((json) => Kos.fromJson(json)).toList();
  }

  // UPDATE
  static Future<void> updateKos(Kos kos) async {
    await _supabase
        .from('DataKos')
        .update({'nama': kos.nama, 'alamat': kos.alamat}).eq('id', kos.id);
  }

  // DELETE
  static Future<void> deleteKos(String id) async {
    await _supabase.from('DataKos').delete().eq('id', id);
  }
}
