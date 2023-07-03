import 'package:flutter/material.dart';
import 'package:jobs/utils/colors.dart';

GestureDetector authButton({required onTap, required String text}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: AppColors.blackColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: AppColors.accentColor,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
        ),
      ));
}

GestureDetector otherButton({required onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: AppColors.blackColor,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Image.asset("lib/images/google.png", height: 40),
            const Text(
              "Sign in with Google",
              style: TextStyle(color: AppColors.accentColor, fontSize: 22),
            )
          ],
        ),
      ));
}
