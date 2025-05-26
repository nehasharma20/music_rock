import 'package:cloud_firestore/cloud_firestore.dart';
import '../../model/music_service.dart';

class ServiceRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<MusicService>> fetchServices() async {
    final snapshot = await _firestore.collection('music_services').get();
    // return snapshot.docs
    //     .map((doc) => MusicService.fromMap(doc.data()))
    //     .toList();
    try{
      if (snapshot.docs.isEmpty){
      print("No documents found in 'music_services'");
      return [];
      }


    return snapshot.docs.map((doc) {
      final data = doc.data();

        // Debug print
        print("Fetched doc data: $data");

        // Basic null safety checks
        if (data['title'] == null || data['description'] == null || data['iconPath'] == null) {
          print("Invalid document: Missing fields in ${doc.id}");
          return null;
        }

        return MusicService.fromJson(data);
      }).whereType<MusicService>().toList();
  } catch (e) {
     print("Error fetching music services: $e");
     return [];

    // return snapshot.docs.map((doc) {
    //   final data = doc.data();
    //   return MusicService.fromJson(data);
    // }).toList();
  }

}
}

