import 'package:fina_me_animal/features/screen2/presentation/views/widgets/animalDetails.dart';
import 'package:flutter/material.dart';

class Screen2Home extends StatelessWidget {
  const Screen2Home({super.key, required this.imagePath2, required this.dogname2, required this.dogType2, required this.gogAge2});
    final String imagePath2, dogname2, dogType2, gogAge2;

  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
     // backgroundColor: Color.fromARGB(249, 255, 255, 255),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 270),
          child: InkWell(
            onTap: () {
              
            },
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(106, 0, 0, 0),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: AnimalDetails(imagePath3: imagePath2, dogname3: dogname2, dogType3: dogType2, gogAge3: gogAge2),
    );
  }
}
