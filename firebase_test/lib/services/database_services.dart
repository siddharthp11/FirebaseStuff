// import 'package:cloud_firestore/cloud_firestore.dart';
//
//
// abstract class DatabaseService{
//   FirebaseFirestore db = FirebaseFirestore.instance;
//
//   DatabaseService({ bool useEmulator = true}){
//     db.useFirestoreEmulator('127.0.0.1', 8080);
//   }
//
//   Future<List<DocumentSnapshot>> getAll(String path);
//   Future<bool> put(String path, Map<String, dynamic> data);
// }
//
// class EntriesService extends DatabaseService{
//   late DocumentReference logs;
//
//
//   EntriesService(String logPath){
//     logs = db.doc('user/logs');
//   }
//
//   //gets all the collection references (dates) in logs
//   @override
//   Future<void> getAll(String path) async {
//   }
//
//
// }