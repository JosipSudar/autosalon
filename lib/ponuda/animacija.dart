import 'package:autosalon/ponuda/ponuda.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Animacija());
}

class Animacija extends StatelessWidget {
  const Animacija({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BabylonJSViewer(src: "lib/assets/auto.glb"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Ponuda()),
          );
        },
        backgroundColor: Colors.green,
        child: const Text("Ponuda"),
      ),
    );
  }
}
