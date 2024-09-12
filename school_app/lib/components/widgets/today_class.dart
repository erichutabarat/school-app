import 'package:flutter/material.dart';
import 'package:school_app/app/dashboard/class_detail/class_detail_screen.dart';
import 'package:school_app/components/card/class_schedule_card.dart';
import 'package:school_app/components/widgets/gap_widget.dart';
import 'package:school_app/models/class_schedule.dart';

Container todayClass(BuildContext context) {
  final List<ClassSchedule> classList = [
    const ClassSchedule(name: "Math", time: "08:00 AM", room: "Room 101"),
    const ClassSchedule(name: "Physics", time: "10:00 AM", room: "Room 202"),
    // const ClassSchedule(name: "Chemistry", time: "01:00 PM", room: "Room 303"),
    // const ClassSchedule(name: "Biology", time: "03:00 PM", room: "Room 404"),
  ];

  return Container(
    alignment: Alignment.topLeft,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Today's Classes",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        gapWidget(heigh: 20),
        Column(
          children: classList.map((classItem) {
            return SizedBox(
              width: double.infinity,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ClassDetailScreen(classDetail: classItem)));
                  },
                  child: classScheduleCard(
                    classItem.name,
                    classItem.time,
                    classItem.room,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    ),
  );
}
