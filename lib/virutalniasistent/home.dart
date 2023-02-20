import 'package:flutter/material.dart';
import 'package:autosalon/virutalniasistent/chat.dart';

void main() {
  runApp(Virutalniasistent());
}

class Virutalniasistent extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Virutalniasistent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virutalni asistent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(),
    );
  }
}
