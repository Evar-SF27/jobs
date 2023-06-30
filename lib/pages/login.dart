import 'package:flutter/material.dart';
import 'package:jobs/widgets/header.dart';
import 'package:jobs/widgets/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white70, Colors.amberAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            headerWithSlogan(),
            const SizedBox(height: 50),
            emailField(controller: null, labelText: "Email"),
          ],
        ),
      )),
    ));
  }
}
