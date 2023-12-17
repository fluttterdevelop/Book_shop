

import 'dart:io';

import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 87, 239, 166),
          title: const Text('Exit'),
          actions: [
            IconButton(
              onPressed: () => exit(0),
              icon: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: const PageHistory(),
    );
  }
}

class PageHistory extends StatelessWidget {
  const PageHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/history/a1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}