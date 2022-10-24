
import 'package:flutter/material.dart';

class MedicalHeader extends StatelessWidget {
  const MedicalHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage("assets/profile/doctor-female.jpg"),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(width: 10.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35,),
            HealthValueText(value: "68.5 kg",),
            HeathTypeText(type: "Weight",),
            SizedBox(height: 15.0,),
            HealthValueText(value: "1.72 m",),
            HeathTypeText(type: "Height",),
            SizedBox(height: 15.0,),
            HealthValueText(value: "130/85 mmHg",),
            HeathTypeText(type: "Blood Pressure",),
          ],
        )
      ],
    );
  }
}

class HeathTypeText extends StatelessWidget {
  final String _type;
  const HeathTypeText({
    type
  }): _type = type;

  @override
  Widget build(BuildContext context) {
    return Text("$_type", style: TextStyle(fontSize: 12.0, fontFamily: "Pop", color: Colors.grey[500]),);
  }
}

class HealthValueText extends StatelessWidget {
  // const HealthValueText({
  //   super.key,
  // });
  final String _value;
  HealthValueText({value}): _value = value;

  @override
  Widget build(BuildContext context) {
    return Text("$_value", style: TextStyle(fontSize: 16.0, fontFamily: "Pop", fontWeight: FontWeight.w500),);
  }
}
