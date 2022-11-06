import 'package:flutter/material.dart';
import 'package:myapp/screens/LoginScreen.dart';
import 'package:myapp/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
