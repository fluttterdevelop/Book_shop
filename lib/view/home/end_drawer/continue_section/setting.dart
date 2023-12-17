
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 109, 62, 134),
          title: const Text('SettingsScreen'),
  
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
              image: AssetImage('assets/gif/logo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
