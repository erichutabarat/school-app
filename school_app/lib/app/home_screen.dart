import 'package:flutter/material.dart';
import 'package:school_app/components/form/login_form.dart';
import 'package:school_app/components/widgets/gap_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late LoginForm loginForm;

  @override
  void initState() {
    super.initState();
    loginForm = LoginForm(TextEditingController(), TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            gapWidget(heigh: 100),
            const Text(
              "Welcome to School Apps",
              style: TextStyle(fontSize: 25),
            ),
            gapWidget(heigh: 20),
            loginForm.showForm(context)
          ],
        ),
      ),
    );
  }
}
