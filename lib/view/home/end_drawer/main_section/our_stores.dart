import 'package:flutter/material.dart';

class OurStores extends StatefulWidget {
  const OurStores({super.key});

  @override
  State<OurStores> createState() => _OurStoresState();
}

class _OurStoresState extends State<OurStores> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 73, 205),
          title: const Text('OurStores'),
          ),

          body: const PhotoOurStores(),
          );
  }
}


class PhotoOurStores extends StatelessWidget {
  const PhotoOurStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/history/a4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}