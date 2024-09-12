import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_app/components/widgets/gap_widget.dart';

class LoginForm {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginForm(this.emailController, this.passwordController);

  Widget showForm(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            controller: emailController,
            decoration:
                const InputDecoration(hintText: "Email", labelText: "Email")),
        gapWidget(heigh: 20),
        TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
                hintText: "Password", labelText: "Password")),
        gapWidget(heigh: 20),
        ElevatedButton(
            onPressed: () {
              loginAction(context);
            },
            child: const Text("Login"))
      ],
    );
  }

  void loginAction(BuildContext context) {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Please Input Form"),
            content: Text("Email or Password are empty!"),
          );
        },
      );
    } else {
      if (emailController.text == "test" && passwordController.text == "test") {
        Timer(const Duration(seconds: 3), () {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/dashboard', // The new route
            (Route<dynamic> route) =>
                false, // This will remove all previous routes
          );
        });
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Login Success"),
              content: Text("Redirecting to dashboard!"),
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Login Failed"),
              content: Text("Email or Password are incorrect!"),
            );
          },
        );
      }
    }
  }

  Map<String, String> showData() {
    return {"email": emailController.text, "password": passwordController.text};
  }
}
