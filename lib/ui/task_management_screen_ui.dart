import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/task_card.dart';

class TaskManagementScreen extends StatelessWidget {
  const TaskManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      appBar: AppBar(
        backgroundColor: MyColors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, John',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              'Organize tasks,\nboost productivity with us.',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              '7, March 2024',
              style: TextStyle(color: Colors.greenAccent, fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(10, (index) {
                return Column(
                  children: [
                    Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: index == 6 ? Colors.yellow : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    if (index == 6)
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 4,
                        width: 4,
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                );
              }),
            ),
            const Divider(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  TaskCard(
                    color: MyColors.green,
                    title: 'Sarath',
                    description: 'Collaborate with client Sarath on wireframe revisions for the homepage',
                  ),
                  TaskCard(
                    color: MyColors.white,
                    title: 'James',
                    description: 'Incorporate feedback from client James into the color palette for the mobile app design.',
                  ),
                  TaskCard(
                    color: MyColors.orange,
                    title: 'Alex',
                    description: 'Conduct a virtual presentation with client Alex to showcase the interactive prototypes and gather input.',
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