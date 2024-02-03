import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/screens/assignment_screen.dart';
import 'package:school_app/screens/datesheet_screen.dart';
import 'package:school_app/screens/login_screen.dart';
import 'package:school_app/screens/profile_screen.dart';
import 'package:school_app/screens/result_screen.dart';
import 'package:school_app/widgets/students_data.dart';

import 'fee_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Safiullah',
                        ),
                        kHalfSizedBox,
                        StudentClass(studentClass: "6th Semester"),
                        kHalfSizedBox,
                        StudentYear(studentYear: '2020-2025'),
                      ],
                    ),
                    kHalfSizedBox,
                    StudentPicture(
                        picAddress: "assets/images/Me.jpg",
                        onPress: () {
                          Navigator.pushNamed(
                              context, MyProfileScreen.routeName);
                        }),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                        onPress: () {}, title: "Attendance", value: "90.02%"),
                    StudentDataCard(
                        onPress: () {
                          Navigator.pushNamed(context, FeeScreen.routeName);
                        }, title: "Fees Dues", value: "600\$"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  // Bouncing Scroll
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/quiz.svg",
                          title: "Quiz",
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, AssignmentScreen.routeName);
                          },
                          icon: "assets/icons/assignment.svg",
                          title: "Assignments",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/holiday.svg",
                          title: "Holidays",
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/timetable.svg",
                          title: "TimeTable",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, ResultScreen.routeName);
                          },
                          icon: "assets/icons/result.svg",
                          title: "Result",
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, DateSheet.routeName);
                          },
                          icon: "assets/icons/datesheet.svg",
                          title: "DateSheet",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/ask.svg",
                          title: "Ask",
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/gallery.svg",
                          title: "Gallery",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/resume.svg",
                          title: "Leave \n Application",
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/lock.svg",
                          title: "Change \n Password",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: "assets/icons/event.svg",
                          title: "Events",
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, LoginScreen.routeName);
                          },
                          icon: "assets/icons/logout.svg",
                          title: "Logout",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});

  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor, 
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 40.0,
              height: 40.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: kDefaultPadding / 3),
          ],
        ),
      ),
    );
  }
}
