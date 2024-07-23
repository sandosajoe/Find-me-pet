
import 'package:fina_me_animal/features/home/presentation/views/widgets/animalListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 255, 255, 255),
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 67,
            width: double.maxFinite,
            child: Image.asset(
              'images/splashScreen/photo_2024-07-22_03-57-10-removebg-preview.png', // Replace with the path to your image asset
              // height: 45.0,width: 45,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("fhlfi"),
          Expanded(child: AnimalListView()),
        ],
      ),
    );
  }
}
