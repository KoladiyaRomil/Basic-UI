import 'package:flutter/material.dart';

class SkillsProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> skillsProducts = ['Flutter Mastery', 'UI Design Pack', 'Backend Blueprint', 'API Toolkit', 'State Management Pro'];

    return Scaffold(
      appBar: AppBar(title: Text("Skills")),
      body: ListView.builder(
        itemCount: skillsProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.school),
            title: Text(skillsProducts[index]),
          );
        },
      ),
    );
  }
}
