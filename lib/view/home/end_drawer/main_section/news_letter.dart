import 'package:flutter/material.dart';

class Newsletter extends StatefulWidget {
  const Newsletter({super.key});

  @override
  State<Newsletter> createState() => _NewsletterState();
}

class _NewsletterState extends State<Newsletter> {
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
      
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 219, 7, 252),
          title: const Text('Newsletter'),
          ),

          body: const PhotoNewsletter(),
          );
  }
}


class PhotoNewsletter extends StatelessWidget {
  const PhotoNewsletter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/history/a3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}