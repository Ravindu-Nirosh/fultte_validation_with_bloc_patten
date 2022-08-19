import 'dart:async';
import 'validetors.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Validaters {

  final _emailController = BehaviorSubject<String>();
  final _passwordController =BehaviorSubject<String>();

  //Retrive Data
  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password =>_passwordController.stream.transform(passwordValidator);
  Stream<bool> get submitValid =>  Rx.combineLatest2(email, password, (a, b) => true);

  //Add Data To Streem
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String)  get changePassword => _passwordController.sink.add;

  submitData(){
    final email = _emailController.value;
    final pass = _passwordController.value;

    print('Password = $pass Email = $email');

  }

  dispose(){
    _emailController.close();
    _passwordController.close();
  }

}