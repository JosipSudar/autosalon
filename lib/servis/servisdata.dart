import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Servisdata extends StatelessWidget {
  String ime, prezime, auto, kvar, opiskvara, vrijemekvara, mobitel, email;

  Servisdata(
      {Key? key,
      required this.ime,
      required this.prezime,
      required this.auto,
      required this.kvar,
      required this.opiskvara,
      required this.vrijemekvara,
      required this.mobitel,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Servis podaci"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Ime: $ime'),
              Text('Prezime: $prezime'),
              Text('Automobil: $auto'),
              Text('Vrsta kvara: $kvar'),
              Text('Opis kvara: $opiskvara'),
              Text('Vrijeme kvara: $vrijemekvara'),
              Text('Mobitel: $mobitel'),
              Text('E-mail: $email'),
            ],
          ),
        ),
      ),
    );
  }
}
