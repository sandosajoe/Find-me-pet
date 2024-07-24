import 'package:fina_me_animal/features/adopted_Animals/presentation/views/widgets/adapts.dart';
import 'package:fina_me_animal/features/home/presentation/views/widgets/about.dart';
import 'package:fina_me_animal/features/home/presentation/views/widgets/contact.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 80, right: 12, left: 12),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 255, 224, 178)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return About();
                  }));
                },
                child: Center(
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          //      Container(
          //   width: double.infinity,
          //   height: 50,
          //     margin: EdgeInsets.only( right: 12 ,left: 12),
          //     decoration: BoxDecoration(color: const Color.fromARGB(174, 255, 224, 178)),
          //     child: InkWell(
          //       onTap: (){
          //             // Navigator.push(context,
          //             //         MaterialPageRoute(builder: (_) {
          //             //       return Adapts()
          //             //     }));
          //       },
          //       child: Center(
          //         child: Text(
          //           "Favourites",
          //           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     )),
          //     SizedBox(height: 20,),
          Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(right: 12, left: 12),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 255, 224, 178)),
              child: InkWell(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Contact();
                  }));
                },
                child: Center(
                  child: Text(
                    "Contact us",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Image.asset("images/splashScreen/8.png")
        ],
      ),
    );
  }
}
