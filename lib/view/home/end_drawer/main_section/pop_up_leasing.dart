import 'package:flutter/material.dart';

class PopupLeasing extends StatefulWidget {
  const PopupLeasing({super.key});

  @override
  State<PopupLeasing> createState() => _PopupLeasingState();
}

class _PopupLeasingState extends State<PopupLeasing> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 102, 189, 82),
          title: const Text('PopupLeasing'),
          ),

          body: const PhotoPopupLeasing(),
          );
  }
}

class PhotoPopupLeasing extends StatelessWidget {
  const PhotoPopupLeasing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/history/a5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}