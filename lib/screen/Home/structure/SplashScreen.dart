import 'package:flutter/material.dart';
import 'package:medical4you_v3/screen/Login/widget/TitleText.dart';

import '../../../app/color.dart';
import '../../../models/user.dart';
import '../HomeViewModel.dart';

class SplashScreen extends StatelessWidget {
  //const SplashScreen({ Key? key }) : super(key: key);
  final HomeViewmodel _viewmodel;
  SplashScreen({viewmodel}) : _viewmodel = viewmodel;

  //List images = ["2.png", "3.png", "4.png"];

  void _onPressLoginButton(context) async {
    final _user = await Navigator.pushNamed(context, '/login');
    //print("User (Splash): ${_user}");
    if (_user != null) {
      _viewmodel.user = (_user as User?)!;
    }
  }

  @override
  Widget build(BuildContext context) {
    double paddingVertical = (MediaQuery.of(context).size.height - 500) / 2;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: (MediaQuery.of(context).size.height - 500) / 2),
            TitleText(
              title: "Hi, We are ready.",
              size: 35.0,
            ),
            TitleText(
              title: "Tap the button to join us now.",
              size: 30.0,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 5 + 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/medical-team1.png"),
                      fit: BoxFit.cover)),
            ),
            MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () => _onPressLoginButton(context),
                color: blue5,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Join Us Now",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Lobster",
                      color: white),
                ))
          ],
        ),
      ),
    );
  }
}
