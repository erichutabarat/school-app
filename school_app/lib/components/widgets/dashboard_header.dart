import 'package:flutter/material.dart';
import 'package:school_app/components/widgets/gap_widget.dart';

Column dashboardHeader() {
  return Column(
    children: [
      gapWidget(heigh: 20),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 35, color: Colors.green),
          Column(
            children: [
              Text("Hi Students!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
              Text(
                "Wed, 11 October",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Icon(Icons.notifications, size: 35, color: Colors.grey)
        ],
      ),
    ],
  );
}
