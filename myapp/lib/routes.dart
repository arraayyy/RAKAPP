import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:myapp/screens/Dashboard.dart';
import 'package:myapp/screens/LoginScreen.dart';
import 'package:myapp/screens/Settings.dart';
import 'package:myapp/screens/SignUp.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  Dashboard.routeName: (BuildContext context) => Dashboard(),
  Settings.routeName: (BuildContext context) => Settings(),
  SignUp.routeName: (BuildContext context) => SignUp(),
};
