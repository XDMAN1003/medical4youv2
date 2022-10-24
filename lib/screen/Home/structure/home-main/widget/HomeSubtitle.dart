import 'package:flutter/material.dart';

class HomeSubTitle extends StatelessWidget {
  final String _title;
  HomeSubTitle({title}): _title = title;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${_title}",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: () => print("View All"),
            child: Text(
              "View All",
              style: TextStyle(color: Colors.grey[600]),
            ))
      ],
    );
  }
}
