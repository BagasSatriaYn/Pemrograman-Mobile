import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Galeri")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: const [
            Image(image: AssetImage('assets/images/pic1.jpg')),
            Image(image: AssetImage('assets/images/pic2.jpg')),
            Image(image: AssetImage('assets/images/avatar.png')),
          ],
        ),
      ),
    );
  }
}
