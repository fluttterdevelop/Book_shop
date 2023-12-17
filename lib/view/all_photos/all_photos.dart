import 'package:flutter/material.dart';

class AllPhotos extends StatefulWidget {
  const AllPhotos({super.key});

  @override
  State<AllPhotos> createState() => _AllPhotosState();
}

class _AllPhotosState extends State<AllPhotos> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 128, 221, 66),
          title: const Text('All Photos'),
         
        ),
        backgroundColor: const Color.fromARGB(255, 245, 161, 4),
        body: const PageViewExample(),

      
      ),
    );
  
  }
}




class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  static final PageController controller = PageController();
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  int currentPage = 0;

  List<String> imagePaths = [
    'assets/history/a1.jpg',
    'assets/history/a2.jpg',
    'assets/history/a3.jpg',
    'assets/history/a4.jpg',
    'assets/history/a5.jpg',
    'assets/history/a6.jpg',
    'assets/history/a7.jpg',
    'assets/history/a8.jpg',
    'assets/history/a9.jpg',
    'assets/history/a10.jpg',
    'assets/history/a11.jpg',
    'assets/history/a12.jpg',
    'assets/history/a13.jpg',
    'assets/history/a14.jpg',
    'assets/history/a15.jpg',
    'assets/history/a16.jpg',
    'assets/history/a17.jpg',
    'assets/history/a18.jpg',
    'assets/history/a19.jpg',
    'assets/history/a20.jpg',
    'assets/history/a21.jpg',
    'assets/history/a22.jpg',
    'assets/history/a23.jpg',
    'assets/history/a24.jpg',
    'assets/history/b1.jpg',
    'assets/history/b2.jpg',
    'assets/history/b3.jpg',
    'assets/history/b4.jpg',
    'assets/history/b5.jpg',
    'assets/history/b6.jpg',
    'assets/history/b7.jpg',
    'assets/history/b8.jpg',
    'assets/history/b9.jpg',
    'assets/history/b10.jpg',
    'assets/history/b11.jpg',
    'assets/history/b12.jpg',
    'assets/history/b13.jpg',
    'assets/history/b14.jpg',
    'assets/history/b15.jpg',
    'assets/history/b16.jpg',
    'assets/history/b17.jpg',
    'assets/history/b18.jpg',
    'assets/history/b19.jpg',
    'assets/history/b20.jpg',
   
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageViewExample.controller,
      onPageChanged: (page) {
        setState(() {
          currentPage = page;
        });
      },
      children: List.generate(
        imagePaths.length,
        (index) => buildPage(imagePaths[index], '', index),
      ),
    );
  }

  Widget buildPage(String imagePath, String text, int index) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${index + 1} - rasm"),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(text, style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
