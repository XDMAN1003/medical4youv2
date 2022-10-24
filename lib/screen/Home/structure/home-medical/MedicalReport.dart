import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical4you_v3/app/color.dart';
import 'package:medical4you_v3/screen/Home/HomeViewModel.dart';

import 'widget/MedicalHeader.dart';
import 'widget/MedicalDetails.dart';

class MedicalReport extends StatelessWidget {
  final HomeViewmodel _viewmodel;
  const MedicalReport({viewmodel}) : _viewmodel = viewmodel;

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: CircleAvatar(
                      radius: 32.0,
                      backgroundColor: Colors.black87,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 30.0,
                        backgroundImage:
                            AssetImage("assets/profile/teacher-female.jpg"),
                      ),
                    ),
                    title: new Text('Justin Lee'),
                    trailing: new Icon(Icons.delete_outline_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(milliseconds: 1500),
                          content: Text("Block the user from viewing")));
                    }),
                SizedBox(
                  height: 20,
                ),
                new ListTile(
                    leading: CircleAvatar(
                      radius: 32.0,
                      backgroundColor: Colors.black87,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 30.0,
                        backgroundImage:
                            AssetImage("assets/profile/teacher-female.jpg"),
                      ),
                    ),
                    title: new Text('Justin Lee'),
                    trailing: new Icon(Icons.delete_outline_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(milliseconds: 1500),
                          content: Text("Block the user from viewing")));
                    }),
                SizedBox(
                  height: 20,
                ),
                new ListTile(
                    leading: CircleAvatar(
                      radius: 32.0,
                      backgroundColor: Colors.black87,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 30.0,
                        backgroundImage:
                            AssetImage("assets/profile/teacher-female.jpg"),
                      ),
                    ),
                    title: new Text('Justin Lee'),
                    trailing: new Icon(Icons.delete_outline_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(milliseconds: 1500),
                          content: Text("Block the user from viewing")));
                    }),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: 20,),
            SizedBox(
              height: 10.0,
            ),
            MedicalHeader(),
            SizedBox(
              height: 10,
            ),
            MedicalDetails(),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () => _viewmodel.selectedIndex = 3,
              minWidth: double.infinity,
              height: 60,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black87, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Change new doctor",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w200,
                    fontFamily: "Lobster"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () => _settingModalBottomSheet(context),
              minWidth: double.infinity,
              height: 60,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black87, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "View visited user",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w200,
                    fontFamily: "Lobster"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () => _viewmodel.selectedIndex = 2,
              minWidth: double.infinity,
              height: 60,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black87, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Back to Home",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w200,
                    fontFamily: "Lobster"),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
