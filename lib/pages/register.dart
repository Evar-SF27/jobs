import 'package:flutter/material.dart';
import 'package:jobs/pages/login.dart';
import 'package:jobs/utils/colors.dart';
import 'package:jobs/widgets/button.dart';
import 'package:jobs/widgets/header.dart';
import 'package:jobs/widgets/input.dart';
import 'package:jobs/widgets/password.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColors.whiteColor, AppColors.accentColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 60),
          headerWithSlogan(),
          const SizedBox(height: 50),
          inputField(controller: null, labelText: "Username"),
          const SizedBox(height: 20),
          emailField(controller: null),
          const SizedBox(height: 20),
          const PasswordField(controller: null),
          const SizedBox(height: 30),
          authButton(text: "Register", onTap: null),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Row(
                  children: [
                    Text("Already have an account?"),
                    SizedBox(width: 4),
                    Text("Sign In",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )),
          const SizedBox(height: 30),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1.2,
                    color: AppColors.blackColor,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or continue with",
                        style: TextStyle(color: AppColors.blackColor)),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1.2,
                    color: AppColors.blackColor,
                  ))
                ],
              )),
          const SizedBox(height: 30),
          otherButton(onTap: null)
        ]),
      )),
    ));
  }
}
