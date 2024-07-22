import 'package:fina_me_animal/features/home/presentation/views/widgets/animalCard.dart';
import 'package:flutter/material.dart';

class AnimalListView extends StatelessWidget {
  AnimalListView({super.key});

  final List<String> animals = [
    "images/splashScreen/1.png",
    "images/splashScreen/1.png",
    "images/splashScreen/1.png",
    "images/splashScreen/1.png",
    "images/splashScreen/1.png",
    "images/splashScreen/1.png",
    "images/splashScreen/1.png",
    "images/dogs/2.jpg",
    "images/dogs/3.jpg",
    "images/dogs/4.jpg",
    "images/dogs/5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: animals.length,
      itemBuilder: (context, index) {
        return AnimalCard(imagePath: animals[index]);
      },
    );
  }
}
