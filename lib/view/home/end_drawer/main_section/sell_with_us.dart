import 'package:flutter/material.dart';

class SellWithUs extends StatefulWidget {
  const SellWithUs({super.key});

  @override
  State<SellWithUs> createState() => _SellWithUsState();
}

class _SellWithUsState extends State<SellWithUs> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(245, 17, 197, 11),
          title: const Text('SellWithUs'),
          ),

          body: const PhotoSellWithUs(),
          );
  }
}

class PhotoSellWithUs extends StatelessWidget {
  const PhotoSellWithUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/history/a6.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}