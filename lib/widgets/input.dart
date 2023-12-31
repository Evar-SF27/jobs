import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:jobs/utils/colors.dart';

Padding emailField({required controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (email) {
        email != null && !EmailValidator.validate(email)
            ? "Enter a valid email"
            : null;
        return null;
      },
      decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.mainColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.mainColor)),
          labelText: "Email",
          labelStyle: TextStyle(color: AppColors.mainColor)),
    ),
  );
}

Padding inputField({required controller, required labelText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextFormField(
      controller: controller,
      obscureText: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.mainColor)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.mainColor)),
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.mainColor)),
    ),
  );
}

Padding textField({required controller, required hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextField(
      controller: controller,
      obscureText: false,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.mainColor)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.mainColor)),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.mainColor)),
    ),
  );
}
