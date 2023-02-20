import 'package:autosalon/dodatnaoprema/dodatnaopremadata.dart';
import 'package:autosalon/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dodatnaoprema());
}

class Dodatnaoprema extends StatelessWidget {
  const Dodatnaoprema({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dodatna oprema',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  final TextEditingController _vrstaopreme = TextEditingController();
  final TextEditingController _imeopreme = TextEditingController();
  final TextEditingController _mobitel = TextEditingController();
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Dodatna oprema"),
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
                  controller: _vrstaopreme,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite vrstu opreme'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _imeopreme,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unesite ime opreme'),
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
                        builder: (context) => Dodatnaopremadata(
                              ime: _ime.text,
                              prezime: _prezime.text,
                              auto: _auto.text,
                              vrstaopreme: _vrstaopreme.text,
                              imeopreme: _imeopreme.text,
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
