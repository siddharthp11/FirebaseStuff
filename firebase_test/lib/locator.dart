import 'package:get_it/get_it.dart';

import 'package:firebase_test/database/firebase.dart';

import 'package:firebase_test/models/home_model.dart';



final locator = GetIt.instance;

void setupLocator(){

  //models
  locator.registerFactory<HomeModel>(()=>  HomeModel()) ;

  //services
  locator.registerLazySingleton<FireStore>(() => FireStore());
}