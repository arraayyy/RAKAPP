import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onPress;

  PrimaryButton({
    required this.text,
    required this.iconData,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: onPress,
        color: Color(0xff0095FF),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        // child: Row(
        //     children: [
        //       Icon(iconData),
        //       Text(
        //         text,
        //         style: const TextStyle(
        //           fontSize: 17,
        //         ),
        //       )
        //     ],
        //   ),

        child: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ));
  }
}
