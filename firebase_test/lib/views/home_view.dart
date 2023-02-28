import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/home_model.dart';
import 'base_view.dart';

class HomeView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return BaseView<HomeModel>(
      builder: (context, child, model) => Scaffold(

        floatingActionButton: FloatingActionButton(
            onPressed: () async{
              //await model.logEntry(<String, dynamic>{'name':'sid'});
              await model.loadActivities();
            }
        ),
          body: Container(
            color: Colors.blueGrey,
            child:  Padding(
              padding:EdgeInsets.fromLTRB(10,10,10,10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Padding(padding: EdgeInsets.fromLTRB(20,20,20,20),
                  child: TextField()),
                  Padding(padding: EdgeInsets.fromLTRB(20,10,20,20),
                      child: TextField()),
                  FloatingActionButton(onPressed: () => 0),
                  ]

              ),
            )
          ),
          )
      );
  }
}