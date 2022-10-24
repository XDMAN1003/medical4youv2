import 'package:flutter/material.dart';

import 'widget/DoctorDetails.dart';
import 'widget/DoctorHeader.dart';

class DoctorBody extends StatelessWidget {
  //aconst DoctorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: SingleChildScrollView(
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
                DoctorHeader(),
                SizedBox(
                  height: 10,
                ),
                DoctorDetails(),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          duration: const Duration(milliseconds: 1500),
                          content: Text("Waiting for the doctor to approve")));
                      Navigator.popAndPushNamed(context, "/home");
                  },
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
                  height: 20,
                )
              ],
            ),
          ),
        ),
    );
  }
}
