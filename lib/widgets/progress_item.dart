import 'package:flutter/material.dart';
import 'package:task_management/utils/colors.dart';

class ProgressItem extends StatelessWidget {
  final String task;
  final String description;
  final String time;
  final bool completed;

  const ProgressItem(
      {super.key, required this.task,
        required this.description,
        required this.time,
        required this.completed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              completed ? Icons.check_box : Icons.check_box_outline_blank,
              color: completed ? Colors.greenAccent : Colors.white,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.white54, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.white54, fontSize: 12),
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