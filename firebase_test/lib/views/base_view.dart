import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

import 'package:firebase_test/locator.dart';

class BaseView<T extends Model> extends StatelessWidget{
  late final ScopedModelDescendantBuilder<T> _builder;

  BaseView({required ScopedModelDescendantBuilder<T> builder}){
    _builder = builder;
  }

  Widget build(BuildContext context) {
    return ScopedModel<T>(
      model : locator<T>(),
      child : ScopedModelDescendant<T>(
        builder: _builder
      )
    );
  }

}
