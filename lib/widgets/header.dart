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
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            children: [
              Text("Find your jobs with speed and ease...",
                  style: TextStyle(fontSize: 16))
            ],
          )
        ],
      )
    ],
  );
}
