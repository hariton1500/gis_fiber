import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    // добавьте здесь логику для загрузки необходимых данных
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'), // логотип вашего приложения
            const SizedBox(height: 20),
            const Text(
                'Название вашего приложения'), // название вашего приложения
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // добавьте здесь логику для перехода на другой экран
              },
              child: const Text('Начать'),
            ),
          ],
        ),
      ),
    );
  }
}
