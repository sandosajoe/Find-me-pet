import 'package:fina_me_animal/features/adopted_Animals/presentation/views/adapts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatefulWidget {
  About({
    super.key,
    required this.imagePath,
    required this.dogName,
    required this.dogAge,
    required this.dogType,
  });
  final String imagePath, dogName, dogAge, dogType;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool choosen = false;

  List<String> images = [];

  List<String> name = [];

  List<String> type = [];

  List<String> age = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  About",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),
          child: Text(
            "\nShe is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs.",
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(
          height: 49,
        ),
        Row(
          children: [
            const Spacer(),
            Container(
              margin: EdgeInsets.only(top: 52),
              width: 170,
              height: 65,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 213, 81, 23),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                  )),
              child: InkWell(
                onTap: () {
                  setState(() {
                      choosen = true;
                  images.add(
                    "${widget.imagePath}",
                  );
                  name.add("${widget.dogName}");
                  age.add("${widget.dogAge}");
                  type.add("${widget.dogType}");
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Adapts(image:images, name:name, type:type, age:age, choosen:true);
                  }));
                  });
                
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.pets,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "  ADOPT",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
