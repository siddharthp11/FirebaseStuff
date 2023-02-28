import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_test/locator.dart';

import 'package:firebase_test/database/firebase.dart';


class HomeModel extends Model{ //do i need to use a mixin for firebase to be here as well?
  FireStore db = locator<FireStore>(); //whats the point of storage service if i gotta import this anyway
  String title = "EH";


  Future<bool> logEntry(Map<String, dynamic> data) async {
    bool success =  await db.putEntryByPath('user/logs/0223', data);
    setTitle(data['name']);
    return success;
  }

  Future<dynamic> getEntries(String collectionName, {String date = ""}) async {
    return await db.getEntriesByPath('user/logs/0223');
  }

  Future<bool> loadActivities() => db.loadActivities();

  void setTitle(String newTitle) {
    title = newTitle + (db.docNum -1).toString();
    notifyListeners();
  }

}