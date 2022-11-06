import 'package:flutter/material.dart';

import 'Settings.dart';

class Dashboard extends StatefulWidget {
  static String routeName = "/dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0095FF),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Settings.routeName);
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.settings,
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
                        "Dashboard",
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
                              image: AssetImage("./assets/welcome.png"),
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
