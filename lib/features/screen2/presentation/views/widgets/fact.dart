import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  const Fact({super.key,  required this.dogName4, required this.dogAge4, required this.dogType4});
    final String  dogName4, dogAge4, dogType4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("  $dogName4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Spacer(),
            Icon(Icons.female,size: 27,color: Colors.grey,)
          ],
        ),
        Row(
          children: [
            Text("   $dogType4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
            Spacer(),
            Text("   $dogAge4 months ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
          ],
        ),
        Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.red,
            size: 24,
          ),
          Text(" 2.5 kms away",style: TextStyle(color: Colors.grey)),
        ],)
      ],
    );
  }
}