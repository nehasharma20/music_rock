import 'package:cloud_firestore/cloud_firestore.dart';
import '../../core/models/music_service_model.dart';

class MusicServiceRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<MusicService>> fetchMusicServices() async {
    final snapshot = await _db.collection('music_services').get();
    return snapshot.docs.map((doc) => MusicService.fromJson(doc.data())).toList();
  }
}