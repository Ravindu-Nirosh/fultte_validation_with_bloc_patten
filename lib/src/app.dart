import 'package:flutter/material.dart';
import 'screens/loginscreen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {

  Widget build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Login With Bloc',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
    
  }
}
