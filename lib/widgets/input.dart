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
          fillColor: AppColors.lightColor,
          filled: true,
          labelText: "Email",
          labelStyle: TextStyle(color: AppColors.mainColor)),
    ),
  );
}

Padding passwordField({required controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextFormField(
      controller: controller,
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        value != null && value.length < 6
            ? "Enter minimum of 8 characters"
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
          fillColor: AppColors.lightColor,
          filled: true,
          labelText: "Password",
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
          fillColor: AppColors.lightColor,
          filled: true,
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
          fillColor: AppColors.lightColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.mainColor)),
    ),
  );
}
