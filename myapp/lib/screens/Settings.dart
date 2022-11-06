import 'package:flutter/material.dart';
import 'package:myapp/screens/LoginScreen.dart';

class Settings extends StatefulWidget {
  static String routeName = "/settings";

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0095FF),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.routeName, (Route<dynamic> route) => false);
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.logout,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      const Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("./assets/Settings.png"),
                              fit: BoxFit.fitHeight),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
