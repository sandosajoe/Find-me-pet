import 'package:fina_me_animal/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimalDetails extends StatelessWidget {
  const AnimalDetails(
      {super.key,
      required this.imagePath3,
      required this.dogname3,
      required this.dogType3,
      required this.gogAge3});
  final String imagePath3, dogname3, dogType3, gogAge3;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          children: [
            Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Spacer(),
            Icon(Icons.female,size: 27,color: Colors.grey,)
          ],
        ),
        Row(
          children: [
            Text("   RetrieverGolden",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
            Spacer(),
            Text("   8 months old  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
          ],
        ),
        Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.red,
            size: 24,
          ),
          Text(" 2.5 kms away",style: TextStyle(color: Colors.grey)),
        ],),
         Container(
          width: 300,height: 300,
            margin:const EdgeInsets.only(left: 90),
            decoration: BoxDecoration(
              color: Colors.yellow[300],
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(1500) ,  topLeft: Radius.circular(1500),
              // topRight: Radius.circular(1500),bottomRight: Radius.circular(1500)
              
              )
            ),
            child: Image.asset("$imagePath3" ,width: double.infinity, height: 100,),
          ),
  

      ],
    );











    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     Row(
    //       children: [
            
    //          // height: 200,
    //           Column(
    //            // mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Text("$dogname3",
    //                   style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.deepOrange[900],
    //                       fontSize: 26)),
    //                       Text("$dogType3" , style: Fonts.dogType,),
    //                        Row(
    //                       children: [
    //                         Icon(
    //                           Icons.date_range_sharp,
    //                           color: Colors.deepOrange[900],
    //                         ),
    //                         Text(
    //                           "$gogAge3",
    //                           style: Fonts.dogAge,
    //                         ),
    //                       ],
    //                     ),
              
    //             ],         
    //           ),
            
    //         Expanded(
    //           child: Container(
    //             width: double.maxFinite,
    //             height: 500,
    //             //height: 30,
                
    //             child: Image.asset("images/splashScreen/8.png")),
    //         )
    //       ],
          
    //     ),
    //     Container(
    //       margin: EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 20),
    //       width: double.infinity,
    //       height: 200,
    //       child: Image.asset("$imagePath3"))
    //   ],
    // );
  }
}
