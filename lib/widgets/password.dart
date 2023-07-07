import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs/utils/colors.dart';

class PasswordField extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  const PasswordField({super.key, required this.controller});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    bool hideText = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: hideText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          value != null && value.length < 6
              ? "Enter minimum of 8 characters"
              : null;
          return null;
        },
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                borderSide: BorderSide(color: AppColors.mainColor)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                borderSide: BorderSide(color: AppColors.mainColor)),
            labelText: "Password",
            labelStyle: const TextStyle(color: AppColors.mainColor),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hideText = !hideText;
                });
              },
              icon: Icon(CupertinoIcons.eye_slash),
            ),
            suffixIconColor: AppColors.mainColor),
      ),
    );
  }
}
