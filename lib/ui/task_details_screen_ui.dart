import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/progress_item.dart';

class TaskDetailsScreen extends StatelessWidget {
  final String title;
  final String details;

  const TaskDetailsScreen({super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      appBar: AppBar(
        backgroundColor: MyColors.black,
        elevation: 0,
        title: const Text('Task Details',style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        actions: const [
          Padding(padding: EdgeInsets.all(8),
            child: Icon(Icons.message,color: Colors.white,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.greenAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Chip(
                  label: Text(
                    'UI/UX Design',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  backgroundColor: Colors.greenAccent,
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text(
                    'High Priority',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  backgroundColor: Colors.greenAccent,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Additional Information',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              details,
              style: const TextStyle(color: Colors.white54, fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Task Progress',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  ProgressItem(
                    task: 'UX for App',
                    description:
                    'Optimize app navigation as per client feedback for an improved user experience.',
                    time: '10:00 AM to 12:00 AM',
                    completed: true,
                  ),
                  ProgressItem(
                    task: 'Icon selections',
                    description:
                    'Adapt iconography to align with client preferences for a personalized touch.',
                    time: '12:00 AM to 1:00 PM',
                    completed: false,
                  ),
                  ProgressItem(
                    task: 'UI Choices',
                    description:
                    'Present varied UI choices to client seeking input for brand-aligned visual elements.',
                    time: '2:00 PM to 3:00 PM',
                    completed: false,
                  ),
                  ProgressItem(
                    task: 'Micro Interactions',
                    description:
                    'Refine UI based on James micro interactions feedback for an enhanced user experience.',
                    time: '4:00 PM to 6:00 PM',
                    completed: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


