
import 'package:fina_me_animal/features/screen2/presentation/views/widgets/screen2_body.dart';
import 'package:flutter/material.dart';


class Screen2Home extends StatelessWidget {
  final String imagePath2, dogName2, dogAge2, dogType2;
  const Screen2Home({super.key, required this.dogName2, required this.dogAge2, required this.dogType2, required this.imagePath2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen2Body(imagePath3: imagePath2, dogName3: dogName2, dogAge3: dogAge2, dogType3: dogType2),
    );
  }
}