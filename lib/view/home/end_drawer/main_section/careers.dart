import 'package:flutter/material.dart';

class Careers extends StatefulWidget {
  const Careers({super.key});

  @override
  State<Careers> createState() => _CareersState();
}

class _CareersState extends State<Careers> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 101, 5, 93),
          title: const Text('Careers'),
          ),

          body: const PhotoCareers(),
          );
  }
}



class PhotoCareers extends StatelessWidget {
  const PhotoCareers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/history/a2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}