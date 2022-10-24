import 'package:flutter/material.dart';
import 'package:medical4you_v3/screen/Home/HomeViewModel.dart';

import 'widget/DoctorCard.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({viewmodel}) : _viewmodel = viewmodel;
  final HomeViewmodel _viewmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      //color: Colors.grey[100],
      // child: ListView.builder(
      //   itemCount: 5,
      //   itemBuilder: (context, index) {
      //     return DoctorCard();
      //   },
      // ),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return DoctorCard(index: index,);
          }),
    );
  }
}
