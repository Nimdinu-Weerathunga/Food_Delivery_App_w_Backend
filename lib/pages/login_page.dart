import 'package:flutter/material.dart';
import 'package:food_delivery_app_w_backend/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(height: 25),
          //msg,app slogan
          Text(
            "Food Delivery App",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(height: 25),

          //email textfield
          MyTextfield(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          //sign in button

          //not a member register now
        ],
      ),
    );
  }
}
