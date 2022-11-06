import 'package:flutter/material.dart';
import 'package:myapp/screens/LoginScreen.dart';

import '../widget/CustomTextField.dart';
import '../widget/PasswordField.dart';
import '../widget/SignUpbutton.dart';
import 'Dashboard.dart';

class SignUp extends StatefulWidget {
  static String routeName = "/signup";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController Fnamecontroller = TextEditingController();
  final TextEditingController Lnamecontroller = TextEditingController();
  final TextEditingController Addresscontroller = TextEditingController();
  bool obscurePassword = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController CpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MYAPP"),
        backgroundColor: Color(0xff0095FF),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: width * .9,
                child: Column(
                  children: [
                    Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create an account, it;s free",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      labelText: "First Name",
                      hintText: "Enter first name",
                      controller: Fnamecontroller,
                      textInputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomTextField(
                      labelText: "Last Name",
                      hintText: "Enter last name",
                      controller: Lnamecontroller,
                      textInputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomTextField(
                      labelText: "Address",
                      hintText: "Enter address",
                      controller: Addresscontroller,
                      textInputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    PasswordField(
                      obscureText: obscurePassword,
                      onTap: handleObscurePassword,
                      labelText: "Password",
                      hintText: "Enter password",
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    PasswordField(
                      obscureText: obscurePassword,
                      onTap: handleObscurePassword,
                      labelText: "Confirm Password",
                      hintText: "Confirm password",
                      controller: CpasswordController,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SignUpButton(
                      text: "Login",
                      iconData: Icons.login,
                      onPress: () {
                        Navigator.pushReplacementNamed(
                            context, Dashboard.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            // must not contain a back button
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                LoginScreen.routeName,
                                (Route<dynamic> route) => false);
                          },
                          child: const Text(
                            "Already have an account? Login",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 87, 87, 87),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  handleObscurePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }
}
