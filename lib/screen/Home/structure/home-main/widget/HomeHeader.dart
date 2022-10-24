import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical4you_v3/screen/Home/HomeViewModel.dart';

class HomeHeader extends StatelessWidget {
  final HomeViewmodel _viewmodel;
  const HomeHeader({viewmodel}) : _viewmodel = viewmodel;

  void _onPressLogoutButton() => _viewmodel.user = null;

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.exit_to_app),
                  title: new Text("Sign Out"),
                  onTap: () {
                    Navigator.pop(context);
                    _onPressLogoutButton();
                  },
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Hello, Ying 👋",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            const Text(
              "How do you feel today?",
            ),
          ],
        ),
        InkWell(
          onTap: () => _settingModalBottomSheet(context),
          child: CircleAvatar(
            radius: 32.0,
            backgroundColor: Colors.black87,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30.0,
              backgroundImage: AssetImage("assets/profile/teacher-female.jpg"),
            ),
          ),
        )
      ],
    );
  }
}
