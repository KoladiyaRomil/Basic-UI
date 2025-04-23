import 'package:flutter/material.dart';

class EmojiProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> emojiProducts = ['🙄 Mood Pad', '😂 Comedy Kit', '🙂 Chill Stickers', '😀 Smile Spray', '😉 Wink Glasses'];

    return Scaffold(
      appBar: AppBar(title: Text("Emoji ")),
      body: ListView.builder(
        itemCount: emojiProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.emoji_emotions),
            title: Text(emojiProducts[index]),
          );
        },
      ),
    );
  }
}
