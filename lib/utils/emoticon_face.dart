import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final VoidCallback? onTap;

  const EmoticonFace({
    super.key,
    required this.emoticonFace,
    this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text(
                          emoticonFace,
                          style: TextStyle(fontSize: 28),
                          ),
                        ),
                  ),
    );
  }
  }