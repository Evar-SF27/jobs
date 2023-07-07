import 'package:flutter/material.dart';

Row header() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text("Job Finder")],
  );
}

Row headerSide() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text("Job Finder")],
  );
}

Row headerWithSlogan() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Row(
            children: [
              Text("Job Finder",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Helvetica"))
            ],
          ),
          Row(
            children: [
              Text("Find your jobs with speed and ease...",
                  style: TextStyle(fontSize: 16, fontFamily: "Arial"))
            ],
          )
        ],
      )
    ],
  );
}
