import 'package:flutter/material.dart';
import 'package:medical4you_v3/screen/Home/HomeViewModel.dart';
import 'package:medical4you_v3/screen/Home/structure/home-meeting/MeetingScreen.dart';
import 'package:medical4you_v3/screen/Home/structure/home-doctors/DoctorListScreen.dart';
import 'package:medical4you_v3/screen/Home/structure/home-medical/MedicalReport.dart';
import '../../../app/color.dart';
import 'home-main/HomeMainBody.dart';

class HomeScreenBody extends StatelessWidget {
  final HomeViewmodel _viewmodel;
  const HomeScreenBody({viewmodel}) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {

    List<String> homeTitle = ["Medical Card","Schedule","","Suggested Doctors"];

    dynamic childrenBody = [
      MedicalReport(viewmodel: _viewmodel),
      MeetingScreen(
        viewmodel: _viewmodel,
      ),
      HomeMainBody(viewmodel: _viewmodel),
      //Text("Prescriptions"),
      DoctorListScreen(viewmodel: _viewmodel,)
    ];

    return Scaffold(
      appBar: (_viewmodel.selectedIndex == 2) ? null : HomeAppBar(title: homeTitle[_viewmodel.selectedIndex]),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: childrenBody[_viewmodel.selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _viewmodel.selectedIndex,
          onTap: (index) => _viewmodel.selectedIndex = index,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.summarize),
              icon: Icon(Icons.summarize_outlined),
              label: "Medical Report",
              //backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.calendar_month),
              icon: Icon(Icons.calendar_month_outlined),
              label: "Meeting",
              //backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home",
              //backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.vaccines),
              icon: Icon(Icons.vaccines_outlined),
              label: "Lab Analysis",
              //backgroundColor: Colors.pink,
            ),
          ]),
    );
  }

  AppBar HomeAppBar({title}) {
    return AppBar(
      toolbarHeight: 55,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          child: IconButton(onPressed: ()=> _viewmodel.selectedIndex = 2, icon: Icon(Icons.home_outlined, color: Colors.black87,)),
        )
      ],
      backgroundColor:Colors.white,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(3, 20, 10, 0),
        child: Text(
          "$title",
          style: TextStyle(
              fontFamily: "Pop", fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
      ),
    );
  }
}
