import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noteapp/auth/login.dart';
import 'package:noteapp/auth/signup.dart';
import 'package:noteapp/home/home.dart';
import 'package:noteapp/noteCRUD/addnotes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogIn(),
      routes: {

        "Log In":(context) => LogIn(),
        "Sign Up":(context) => SignUp(),
        "HomePage":(context) => HomePage(),
        "AddNote":(context) => AddNote(),
      }
    );
  }
}
