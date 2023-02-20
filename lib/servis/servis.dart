import 'package:autosalon/navbar.dart';
import 'package:autosalon/servis/servisdata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Servis());
}

class Servis extends StatelessWidget {
  const Servis({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Servis',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
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
  final TextEditingController _kvar = TextEditingController();
  final TextEditingController _opiskvara = TextEditingController();
  final TextEditingController _vrijemekvara = TextEditingController();
  final TextEditingController _mobitel = TextEditingController();
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Servis"),
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
                  controller: _kvar,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite vrstu kvara'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _opiskvara,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite opis kvara'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _vrijemekvara,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite vrijeme kvara'),
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
                      border: OutlineInputBorder(), labelText: 'Unesite Email'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Servisdata(
                              ime: _ime.text,
                              prezime: _prezime.text,
                              auto: _auto.text,
                              kvar: _kvar.text,
                              opiskvara: _opiskvara.text,
                              vrijemekvara: _vrijemekvara.text,
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
