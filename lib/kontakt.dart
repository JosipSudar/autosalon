import 'dart:math';
import 'package:flutter/material.dart';

class Kontakt extends StatelessWidget {
  const Kontakt({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double x = 0;
  double y = 0;
  double amplitude = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              ..rotateX(x)
              ..rotateY(y),
            child: GestureDetector(
              onPanUpdate: (details) {
                if (y - details.delta.dx < 0) {
                  setState(() {
                    y = max(y - details.delta.dx / 100, -amplitude);
                  });
                } else {
                  setState(() {
                    y = min(y - details.delta.dx / 100, -amplitude);
                  });
                }
                if (x - details.delta.dy < 0) {
                  setState(() {
                    x = min(x - details.delta.dy / 100, -amplitude);
                  });
                } else {
                  setState(() {
                    x = max(x - details.delta.dy / 100, -amplitude);
                  });
                }
              },
              child: Container(
                width: double.infinity,
                height: 230,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/card.png"),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 28,
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
