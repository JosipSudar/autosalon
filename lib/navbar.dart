import 'package:autosalon/kontakt.dart';
import 'package:autosalon/main.dart';
import 'package:autosalon/probnavoznja/probnavoznja.dart';
import 'package:autosalon/servis/servis.dart';
import 'package:autosalon/dodatnaoprema/dodatnaoprema.dart';
import 'package:autosalon/virutalniasistent/home.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Početna stranica'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_repair),
            title: const Text('Servis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Servis()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('Probna vožnja'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Probnavoznja()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.style),
            title: const Text('Dodatna oprema'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dodatnaoprema()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.headphones),
            title: const Text('Virutalni asistent'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Virutalniasistent()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Kontakt'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Kontakt()),
              );
            },
          ),
        ],
      ),
    );
  }
}
