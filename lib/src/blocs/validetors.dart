import 'dart:async';

class Validaters {
  //Email Validtor
  final emailValidator =StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink){
      if (email.contains('@')){
        sink.add(email);
      }else{
        sink.addError('Enter A Valid Email');
      }
    }
  );

  //Password Validator
  final passwordValidator =StreamTransformer<String,String>.fromHandlers(
    handleData: (password,sink){
      if(password.length>4){
        sink.add(password);
      }else{
        sink.addError("Enter Valid Password");
      }
    }
  );

}