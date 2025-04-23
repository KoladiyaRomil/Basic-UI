import 'package:flutter/material.dart';

class SkillDetailsPage extends StatelessWidget {
  final String title;
  final int totalExercises;
  final Color color;

  const SkillDetailsPage({
    Key? key,
    required this.title,
    required this.totalExercises,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 100, color: color),
            SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Text('$totalExercises Exercises', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("Here you can add videos, tips, exercises, etc.",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
