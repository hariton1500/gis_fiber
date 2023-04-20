import 'package:flutter/material.dart';

class FoscsMenu extends StatefulWidget {
  const FoscsMenu({super.key});

  @override
  State<FoscsMenu> createState() => _FoscsMenuState();
}

class _FoscsMenuState extends State<FoscsMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              ListTile(
                //leading: const Icon(Icons.abc),
                title: ElevatedButton(
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(100, 100))),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => FoscsMenu()));
                    },
                    child: const Text('Create FOSC')),
              ),
              ListTile(
                //leading: const Icon(Icons.abc),
                title: ElevatedButton(
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(100, 100))),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => FoscsMenu()));
                    },
                    child: const Text('Load FOSCs list')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
