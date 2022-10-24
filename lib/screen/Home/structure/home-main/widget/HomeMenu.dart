import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeMenu extends StatelessWidget {
  //const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuCard(textTitle: "Medical Report", icon: Icons.summarize_outlined),
          SizedBox(
            width: 5.0,
          ),
          MenuCard(textTitle: "Meeting", icon: Icons.calendar_month_outlined),
          SizedBox(
            width: 5.0,
          ),
          MenuCard(textTitle: "Prescriptions", icon: Icons.medication_outlined),
          SizedBox(
            width: 5.0,
          ),
          MenuCard(textTitle: "Lab Analysis", icon: Icons.vaccines_outlined),
        ],
      ),
    );
  }

  Container MenuCard({IconData? icon, String? textTitle}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black87, width: 2.0),
      ),
      child: InkWell(
        onTap: () => print("Haha"),
        child: Center(
          child: Row(
            children: [
              Icon(
                icon,
                size: 25.0,
                color: Colors.black87,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "${textTitle}",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
