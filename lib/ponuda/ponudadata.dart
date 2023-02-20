import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ponudadata extends StatelessWidget {
  String ime, prezime, auto, mobitel, email;

  Ponudadata(
      {Key? key,
      required this.ime,
      required this.prezime,
      required this.auto,
      required this.mobitel,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ponuda podaci"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Ime: $ime'),
              Text('Prezime: $prezime'),
              Text('Automobil: $auto'),
              Text('Mobitel: $mobitel'),
              Text('E-mail: $email'),
            ],
          ),
        ),
      ),
    );
  }
}
