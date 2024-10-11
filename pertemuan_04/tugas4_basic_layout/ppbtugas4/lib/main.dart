import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 37, 133, 26),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome,',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 108, 32, 214), // Ganti warna sesuai keinginan
                      ),
                    ),
                    const Text(
                      '2211104023 - Mohammad Dhimas Afrizal',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 71, 30, 238),
                          Color.fromARGB(255, 128, 91, 238),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
