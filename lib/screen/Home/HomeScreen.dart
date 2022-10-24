import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../view.dart';
import 'HomeViewModel.dart';
import 'structure/HomeScreenBody.dart';
import 'structure/SplashScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
            viewmodel: HomeViewmodel(),
            progressBuilder: (context, viewmodel) => Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(child: CircularProgressIndicator()),
                ),
            builder: (context, mainViewmodel, progressBuilder) {
              
              return (mainViewmodel.isUserSignedIn)? HomeScreenBody(viewmodel: mainViewmodel,) : SplashScreen(viewmodel: mainViewmodel);
            }),
      ),
    );
  }
}
