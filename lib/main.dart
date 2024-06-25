import 'package:flutter/material.dart';
import 'package:task_management/ui/task_details_screen_ui.dart';
import 'package:task_management/ui/task_management_screen_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TaskManagementScreen(),
      routes: {
        '/taskDetails' : (context) => const TaskDetailsScreen(title: 'James',
          details:
          'Incorporate feedback from client James into the color palette for the mobile app design.',
        ),
      },
    );
  }
}




