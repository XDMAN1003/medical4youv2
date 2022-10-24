import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical4you_v3/models/appointment.dart';
import 'package:medical4you_v3/screen/Home/HomeViewModel.dart';
import 'package:medical4you_v3/screen/Home/structure/home-meeting/widget/MeetingCard.dart';

class MeetingScreen extends StatelessWidget {
  final HomeViewmodel _viewmodel;
  const MeetingScreen({viewmodel}): _viewmodel = viewmodel;

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return MeetingCard();
        },
      ),
    );
  }
}
