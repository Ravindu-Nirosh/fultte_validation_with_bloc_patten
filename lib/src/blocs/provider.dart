import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{
  final bloc=Bloc();

  Provider({Key? key, required super.child}) : super(key: key);

  @override
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider).bloc;
  }

}