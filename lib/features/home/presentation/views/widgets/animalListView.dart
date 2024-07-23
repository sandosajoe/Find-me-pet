import 'package:fina_me_animal/features/home/presentation/views/widgets/animalCard.dart';
import 'package:flutter/material.dart';

class AnimalListView extends StatelessWidget {
  AnimalListView({super.key});

  final List<String> animals = [
    "images/dogs/1.png",
    "images/dogs/2.png",
    "images/dogs/3.png",
    "images/dogs/4.png",
    "images/dogs/5.png",
    "images/dogs/6.png",
    "images/dogs/7.png",
    "images/dogs/8.png",
    "images/dogs/9.png",
    "images/dogs/10.png",
    "images/dogs/11.png",
    "images/dogs/12.png",
    "images/dogs/13.png",
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
