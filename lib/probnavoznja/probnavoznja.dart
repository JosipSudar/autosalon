import 'package:autosalon/navbar.dart';
import 'package:autosalon/probnavoznja/probnavoznjadata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Probnavoznja());
}

class Probnavoznja extends StatelessWidget {
  const Probnavoznja({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Probna vožnja',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  final TextEditingController _ime = TextEditingController();
  final TextEditingController _prezime = TextEditingController();
  final TextEditingController _auto = TextEditingController();
  final TextEditingController _pocetakvoznje = TextEditingController();
  final TextEditingController _krajvoznje = TextEditingController();
  final TextEditingController _mobitel = TextEditingController();
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Probna vožnja"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _ime,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Unesite ime'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _prezime,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite prezime'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _auto,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite marku automobila'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _pocetakvoznje,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite vrijeme početka vožnje'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _krajvoznje,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite željeno trajanje vožnje'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _mobitel,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite broj mobitela'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite E-mail'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Probnavoznjadata(
                              ime: _ime.text,
                              prezime: _prezime.text,
                              auto: _auto.text,
                              pocetakvoznje: _pocetakvoznje.text,
                              krajvoznje: _krajvoznje.text,
                              mobitel: _mobitel.text,
                              email: _email.text,
                            )));
                  },
                  child: const Text('Prikaži formu'))
            ],
          ),
        ),
      ),
    );
  }
}
