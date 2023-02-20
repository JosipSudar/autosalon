import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dodatnaopremadata extends StatelessWidget {
  String ime, prezime, auto, vrstaopreme, imeopreme, mobitel, email;

  Dodatnaopremadata(
      {Key? key,
      required this.ime,
      required this.prezime,
      required this.auto,
      required this.vrstaopreme,
      required this.imeopreme,
      required this.mobitel,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Servis podaci"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Ime: $ime'),
              Text('Prezime: $prezime'),
              Text('Automobil: $auto'),
              Text('Vrsta opreme: $vrstaopreme'),
              Text('Ime opreme: $imeopreme'),
              Text('Mobitel: $mobitel'),
              Text('E-mail: $email'),
            ],
          ),
        ),
      ),
    );
  }
}
