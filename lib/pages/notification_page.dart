import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> notifications = [
      "Order #1234 has been shipped!",
      "You received a new offer!",
      "Don't miss today's deal!",
      "Update available for your app",
      "Welcome back 👋"
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text(notifications[index]),
          );
        },
      ),
    );
  }
}
