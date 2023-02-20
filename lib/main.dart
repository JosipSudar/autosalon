import 'package:autosalon/ponuda/animacija.dart';
import 'package:flutter/material.dart';
import 'package:autosalon/navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _data = [
    {
      'image':
          'https://w7.pngwing.com/pngs/509/532/png-transparent-volkswagen-group-car-logo-volkswagen-car-logo-brand-emblem-trademark-volkswagen-thumbnail.png',
      'text': 'Volkswagen',
    },
    {
      'image':
          'https://w7.pngwing.com/pngs/995/480/png-transparent-bmw-car-logo-bmw-logo-trademark-logo-car-thumbnail.png',
      'text': 'BMW',
    },
    {
      'image':
          'https://w7.pngwing.com/pngs/186/0/png-transparent-toyota-logo-2017-toyota-camry-car-logo-toyota-car-logo-brand-emblem-company-text-thumbnail.png',
      'text': 'Toyota',
    },
    {
      'image':
          'https://w7.pngwing.com/pngs/665/220/png-transparent-audi-logo-audi-a3-car-emblem-logo-audi-car-logo-brand-text-candle-automobile-repair-shop-thumbnail.png',
      'text': 'Audi',
    },
    {
      'image':
          'https://w7.pngwing.com/pngs/567/493/png-transparent-nissan-logo-nissan-altima-car-nissan-titan-nissan-quest-nissan-nissan-car-standard-logo-emblem-flag-free-logo-design-template-thumbnail.png',
      'text': 'Nissan',
    },
  ];

  final List<Map<String, dynamic>> _choices = [
    {
      'image':
          'https://w7.pngwing.com/pngs/121/586/png-transparent-suzuki-jimny-car-logo-suzuki-cdr-angle-text-thumbnail.png',
      'text': 'Suzuki',
    },
    {
      'image':
          'https://w7.pngwing.com/pngs/398/1013/png-transparent-peugeot-logo-peugeot-logo-peugeot-car-logo-brand-white-text-monochrome-thumbnail.png',
      'text': 'Peugeot',
    },
    {
      'image':
          'https://w7.pngwing.com/pngs/25/607/png-transparent-mazda-logo-mazda3-car-mazda-capella-mazda-cx-5-mazda-car-logo-brand-emblem-trademark-heart-thumbnail.png',
      'text': 'Mazda',
    },
  ];

  void _addNewItem(int index) {
    setState(() {
      _data.add(_choices[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Autosalon',
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Ponuda automobila'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Animacija()),
                      );
                    },
                    child: ListTile(
                      leading: Image.network(
                        _data[index]['image'],
                        width: 100,
                        height: 100,
                      ),
                      title: Text(
                        _data[index]['text'],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _choices.asMap().entries.map((entry) {
                final index = entry.key;
                final choice = entry.value;
                return ElevatedButton(
                  onPressed: () => _addNewItem(index),
                  child: Text(choice['text']),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
