import 'package:flutter/material.dart';

Card classScheduleCard(String name, String time, String room) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontSize: 20)),
          Text(time, style: const TextStyle(fontSize: 15)),
          Text(room, style: const TextStyle(fontSize: 15)),
        ],
      ),
    ),
  );
}
