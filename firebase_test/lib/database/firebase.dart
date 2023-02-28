import 'package:cloud_firestore/cloud_firestore.dart';


class FireStore{

  FirebaseFirestore db = FirebaseFirestore.instance;
  int docNum = 0;


  FireStore({ bool useEmulator = true}){
    if (useEmulator){
      db.useFirestoreEmulator('127.0.0.1', 8080);
    }
  }

  // List of entries from a day
  Future<List<DocumentSnapshot>> getEntriesByPath(String path) async {

    final entries = db.collection(path);
    final documents = await entries.get();
    return documents.docs;
  }

  // Add a document
  Future<bool> putEntryByPath(String path, Map<String, dynamic> data) async {

    final collection = db.collection(path);
    await collection.doc(docNum.toString()).set(data, SetOptions(merge:true));
    docNum++;
    return true;
  }

  Future<bool> loadActivities() async {
    final userData = db.doc('user/user_data');
    final userDataRef = await userData.get();
    final activitiesMap = userDataRef.data()?['activities'];
    print(activitiesMap);
    return true;
  }




}