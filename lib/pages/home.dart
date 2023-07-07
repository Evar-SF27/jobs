import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs/pages/dashboard.dart';
import 'package:jobs/pages/job.dart';
import 'package:jobs/pages/profile.dart';
import 'package:jobs/pages/search.dart';
import 'package:jobs/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screens = [
    const Dashboard(),
    const SearchScreen(),
    const JobScreen(),
    const ProfileScreen()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const IconButton(
                onPressed: null,
                icon: Icon(CupertinoIcons.left_chevron,
                    size: 28, color: AppColors.blackColor)),
            leadingWidth: 40,
            title: const Text("Jobs Finder",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            actions: const [
              IconButton(
                  onPressed: null,
                  icon: Icon(CupertinoIcons.bell_fill,
                      size: 28, color: AppColors.blackColor)),
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.chat, size: 28, color: AppColors.blackColor))
            ]),
        body: screens[currentIndex],
        backgroundColor: AppColors.lightBlackColor,
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          backgroundColor: const Color.fromARGB(255, 236, 245, 235),
          iconSize: 32,
          elevation: 5.0,
          selectedItemColor: AppColors.accentColor,
          unselectedItemColor: AppColors.blackColor,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Dashboard",
                backgroundColor: AppColors.lightBlackColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: "Search",
                backgroundColor: AppColors.lightBlackColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.briefcase_fill),
                label: "Feed",
                backgroundColor: AppColors.lightBlackColor),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled),
                label: "Profile",
                backgroundColor: AppColors.lightBlackColor),
          ],
        ));
  }
}
