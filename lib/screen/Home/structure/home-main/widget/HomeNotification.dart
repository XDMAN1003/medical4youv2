import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'HomeSubtitle.dart';


// ignore_for_file: prefer_const_constructors

class HomeNotification extends StatelessWidget {
  const HomeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B'];
    final List<int> colorCodes = <int>[600, 500];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSubTitle(
          title: "Notifications",
        ),
        Notification(
            imagePath: "assets/notification/calendar.gif",
            title: "Booking Successfully",
            subtitle: "Appointment with Dr Ying"),
        SizedBox(height: 10),
        Notification(
            subtitle: "Dr Ying is checking the patient",
            imagePath: "assets/notification/stethoscope.png",
            title: "Diagnosing"),
        SizedBox(height: 10),
        Notification(
            subtitle: "Take a good rest and have a nice day.",
            imagePath: "assets/notification/good-luck.png",
            title: "Process DONE!")
      ],
    );
  }

  Container Notification({String? title, String? subtitle, String? imagePath}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2.0, color: Colors.black87)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(imagePath!), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                title!,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(subtitle!)
            ],
          ),
        ],
      ),
    );
  }
}
