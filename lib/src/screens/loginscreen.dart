// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(context) {
    final bloc=Provider.of(context);
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: [
            Emailfiled(bloc),
            Passwordfield(bloc),
            SizedBox(height: 20),
            SubmitButton(bloc),
          ],
        ),
      ),
    );
  }

  Widget Emailfiled(Bloc bloc){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Ravindu@gmail.com',
            errorText: snapshot.error?.toString(),
          ),
        );
      }
    );
  }

   Widget Passwordfield(Bloc bloc){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Password',
            errorText:  snapshot.error?.toString(),
          ),
        );
      }
    );
   }

   Widget SubmitButton(Bloc bloc){
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return ElevatedButton(
            onPressed:snapshot.hasData? bloc.submitData : null,
            child: Text('Submit',
            ),
        );
      }
    );
   }

}
