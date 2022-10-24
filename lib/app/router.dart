import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical4you_v3/screen/Doctor/DoctorScreen.dart';
import 'package:medical4you_v3/screen/Login/LoginScreen.dart';
import '../screen/Home/HomeScreen.dart';
import 'route.dart';

Route<dynamic>? createRoute(settings) {
  switch (settings.name) {
    case initialScreen:
    case home:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    case loginScreen:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
    case doctorScreen:
      return MaterialPageRoute(
        builder: (context) => DoctorScreen(),
      );
    // case editProfile:
    //   return MaterialPageRoute(builder: (context) => EditProfile());
    // case addNews:
    //   return MaterialPageRoute(builder: (context) => PostNews());
    // case verifyNewsList:
    //   return MaterialPageRoute(builder: (context) => VerifyNewsList());
    // case addProduct:
    //   return MaterialPageRoute(builder: (context) => PostProduct());
    // case verifyNews:
    //    return EventDetail.route(data: settings.arguments as EventInfo);
    // case eventList:
    //   return MaterialPageRoute(
    //     builder: (context) => EventList(),
    //   );
    // case appDetail:
    //   return AppDetail.route(index: settings.arguments as int);
    // case eventDetail:
    //   return EventDetail.route(data: settings.arguments as EventInfo);
  }
  return null;
}
