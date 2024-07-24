import 'package:flutter/material.dart';

class AdaptsBody extends StatelessWidget {
  const AdaptsBody({super.key, required this.name, required this.image});
  final String name, image;
  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(158, 158, 158, 158).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Image.asset(image)),
              // Text("${name[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 12,
              ),
              Container(
                  child: Text(
                "$name",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                    color: Colors.white),
              )),
            ],
          );
  }
}
