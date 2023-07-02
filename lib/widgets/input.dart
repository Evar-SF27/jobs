import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Padding emailField({required controller, required labelText}) {
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
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: Colors.amber)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: Colors.amber)),
          fillColor: const Color.fromARGB(255, 251, 241, 208),
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.amber)),
    ),
  );
}
