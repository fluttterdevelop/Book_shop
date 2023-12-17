import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 108, 229),
          title: const Text('PrivacyScreen'),
  
    ),
    body: const Photo(),
    );
  }
}


class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/gif/loader.gif'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
