import 'package:flutter/material.dart';
import 'package:gis_fiber/Screens/Main/Foscs/foscsmenu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        //leading: const Icon(Icons.abc),
        title: ElevatedButton(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(100, 100))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FoscsMenu()));
            },
            child: const Text('Operations with FOSCs')),
      ),
    );
  }
}
