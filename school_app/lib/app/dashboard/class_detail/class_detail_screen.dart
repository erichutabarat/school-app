import 'package:flutter/material.dart';
import 'package:school_app/models/class_schedule.dart';

class ClassDetailScreen extends StatelessWidget {
  const ClassDetailScreen({super.key, required this.classDetail});
  final ClassSchedule classDetail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Class")),
      body: Column(
        children: [
          Text(classDetail.name),
          Text(classDetail.time),
          Text(classDetail.room)
        ],
      ),
    );
  }
}
