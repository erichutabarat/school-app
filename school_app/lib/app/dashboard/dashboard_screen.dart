import 'package:flutter/material.dart';
import 'package:school_app/components/widgets/dashboard_header.dart';
import 'package:school_app/components/widgets/today_class.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: dashboardHeader()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: todayClass(context),
          )
        ],
      ),
    );
  }
}
