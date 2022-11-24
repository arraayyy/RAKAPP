import 'package:flutter/material.dart';
import 'package:myapp/screens/Dashboard.dart';
import 'package:myapp/screens/SignUp.dart';
import 'package:myapp/services/AuthService.dart';
import 'package:myapp/widget/PasswordField.dart';
import '../widget/CustomTextField.dart';
import '../widget/PrimaryButton.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthService _authService = AuthService();
  final TextEditingController emailController = TextEditingController();
  bool obscurePassword = true;
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login to your account",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      labelText: "Email",
                      hintText: "Enter email address",
                      controller: emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PasswordField(
                      obscureText: obscurePassword,
                      onTap: handleObscurePassword,
                      labelText: "Password",
                      hintText: "Enter password",
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                      text: "Login",
                      iconData: Icons.login,
                      onPress: () {
                        loginWithProvider();
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            // must not contain a back button
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                SignUp.routeName,
                                (Route<dynamic> route) => false);
                          },
                          child: const Text(
                            "Don't have an account? Sign up here",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("./assets/background.png"),
                            fit: BoxFit.fitHeight),
                      ),
                    )
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

  loginWithProvider() async {
    try {
      var user = await _authService.signInWithGoogle();
      // it will navigate to dashboard screen
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, Dashboard.routeName);
    } catch (e) {}
  }
}
