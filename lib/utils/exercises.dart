

import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int numberofExerciseName;
  final  Color;
  final VoidCallback? onTap;

  const Exercises({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberofExerciseName,
    required this.Color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Colors.white),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exerciseName, style: TextStyle(color: Colors.white, fontSize: 18)),
                Text('$numberofExerciseName Exercises', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
