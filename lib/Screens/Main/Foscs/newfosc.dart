import 'package:flutter/material.dart';

class NewFosc extends StatefulWidget {
  const NewFosc({super.key});

  @override
  State<NewFosc> createState() => _NewFoscState();
}

class _NewFoscState extends State<NewFosc> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(),
      ),
    ));
  }
}
