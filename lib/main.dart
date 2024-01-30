import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pakistan Cricket Team Players'),
        ),
        body: PlayerList(),
      ),
    );
  }
}
class PlayerList extends StatelessWidget {
  // Sample data for the list of players
  final List<String> players = [
    'Babar Azam',
    'Mohammad Rizwan',
    'Fakhar Zaman',
    'Shadab Khan',
    'Shaheen Afridi',
    'Mohammad Hafeez',
    'Imad Wasim',
    'Hasan Ali',
    'Sarfraz Ahmed',
    'Asif Ali',
    // Add more players as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(players[index]),
          // You can add more customization to ListTile if needed
          // subtitle, leading, trailing, onTap, etc.
        );
      },
    );
  }
}
