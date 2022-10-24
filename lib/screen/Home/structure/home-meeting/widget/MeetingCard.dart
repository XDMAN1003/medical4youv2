import 'package:flutter/material.dart';

class MeetingCard extends StatelessWidget {
  const MeetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      width: MediaQuery.of(context).size.width - 40,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          //color: blue5,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black87, width: 2.0)),
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2),
                      image: DecorationImage(
                          image: AssetImage("assets/profile/doctor-female.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent[400],
                            borderRadius: BorderRadius.circular(10)),
                      ))
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr Xiao Ying",
                    maxLines: 3,
                    style: TextStyle(
                        fontFamily: "Pop",
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Specialist in Emergency",
                    style: TextStyle(
                        fontFamily: "Pop",
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            thickness: 2,
            color: Colors.black87,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 20.0,
                    color: Colors.black87,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "22 Oct 2022",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Pop",
                        color: Colors.black87),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.hourglass_bottom_outlined,
                    size: 20.0,
                    color: Colors.black87,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "10:30 am",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Pop",
                        color: Colors.black87),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    //color: Colors.black87,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2, color: Color(0xff212121))),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
                child: Text(
                  "F2F",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Pop",
                      color: Colors.grey[900]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 50,
            onPressed: () => print("Hello"),
            elevation: 0,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black87, width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "View Appointment",
              style: TextStyle(fontSize: 22.0, fontFamily: "Lobster"),
            ),
          ),
        ],
      ),
    );
  }
}
