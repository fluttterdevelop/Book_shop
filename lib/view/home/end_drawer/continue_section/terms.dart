import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 169, 107, 26),
          title: const Text('TermsScreen'),
  
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
              image: AssetImage('assets/history/b20.jpg',),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}