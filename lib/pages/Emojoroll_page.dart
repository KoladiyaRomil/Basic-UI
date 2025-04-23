import 'package:flutter/material.dart';

class EmojiRollPage extends StatelessWidget {
  final String emoji;

  const EmojiRollPage({required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Emoji Roll")),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 2 * 3.14),
          duration: Duration(seconds: 2),
          builder: (_, double angle, child) {
            return Transform.rotate(
              angle: angle,
              child: Text(
                emoji,
                style: TextStyle(fontSize: 100),
              ),
            );
          },
        ),
      ),
    );
  }
}
