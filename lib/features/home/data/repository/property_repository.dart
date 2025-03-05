import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/property.dart';

class PropertyRepository{

  Future<List<Property>> getProperties() async {
    QuerySnapshot snapshot =
    await FirebaseFirestore.instance.collection('properties').get();
    List<Map<String, dynamic>> properties = snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
    return properties.map((e) => Property.fromFirestore(e)).toList();
  }
}
