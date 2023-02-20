import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Probnavoznjadata extends StatelessWidget {
  String ime, prezime, auto, pocetakvoznje, krajvoznje, mobitel, email;

  Probnavoznjadata(
      {Key? key,
      required this.ime,
      required this.prezime,
      required this.auto,
      required this.pocetakvoznje,
      required this.krajvoznje,
      required this.mobitel,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Probna vožnja podaci"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Ime: $ime'),
              Text('Prezime: $prezime'),
              Text('Automobil: $auto'),
              Text('Početak vožnje: $pocetakvoznje'),
              Text('Trajanje vožnje: $krajvoznje'),
              Text('Mobitel: $mobitel'),
              Text('E-mail: $email'),
            ],
          ),
        ),
      ),
    );
  }
}
