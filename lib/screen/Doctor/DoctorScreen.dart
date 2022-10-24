import 'package:flutter/material.dart';

import 'DoctorBody.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 55,
            elevation: 0.0,
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: IconButton(
                    onPressed: () => Navigator.popAndPushNamed(context, "/home"),
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.black87,
                    )),
              )
            ],
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Text(
                "Doctor Profile",
                style: TextStyle(
                    fontFamily: "Pop",
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
            ),
          ),
          body: DoctorBody(),
        ),
      ),
    );
  }
}
