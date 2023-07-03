import 'package:flutter/material.dart';
import 'package:jobs/utils/colors.dart';
import 'package:jobs/widgets/button.dart';
import 'package:jobs/widgets/header.dart';
import 'package:jobs/widgets/input.dart';

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
            colors: [Colors.white70, Colors.amberAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 70),
          headerWithSlogan(),
          const SizedBox(height: 50),
          emailField(controller: null),
          const SizedBox(height: 20),
          passwordField(controller: null),
          const SizedBox(height: 5),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const ResetScreen()));
                  // },
                  child: const Text("Forgot Password",
                      style: TextStyle(color: AppColors.blackColor)),
                )
              ])),
          const SizedBox(height: 30),
          authButton(text: "Sign In", onTap: null),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const RegisterPage()));
                // },
                child: const Row(
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 4),
                    Text("Register Now",
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
