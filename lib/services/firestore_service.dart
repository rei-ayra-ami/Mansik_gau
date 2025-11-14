import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/boss.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Boss>> getBosses() {
    return _db.collection('bosses').snapshots().map((snapshot) =>
      snapshot.docs.map((doc) {
        final data = doc.data();
        return Boss(
          name: data['name'] ?? '',
          description: data['description'] ?? '',
          image: data['image'] ?? '',
          hp: data['hp'] ?? 0,
          tips: List<String>.from(data['tips'] ?? []),
        );
      }).toList());
  }
}
