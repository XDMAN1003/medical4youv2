import 'package:flutter/material.dart';

import '../../HomeViewModel.dart';
import 'widget/HomeEvent.dart';
import 'widget/HomeHeader.dart';
import 'widget/HomeMenu.dart';
import 'widget/HomeNotification.dart';

class HomeMainBody extends StatelessWidget {
  const HomeMainBody({
    super.key,
    required HomeViewmodel viewmodel,
  }) : _viewmodel = viewmodel;

  final HomeViewmodel _viewmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              HomeHeader(
                viewmodel: _viewmodel,
              ),
              SizedBox(
                height: 15.0,
              ),
              HomeMenu(),
              SizedBox(
                height: 15.0,
              ),
              HomeEvents(),
              SizedBox(
                height: 15.0,
              ),
              HomeNotification(),
            ]),
      ),
    );
  }
}
