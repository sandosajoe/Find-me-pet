import 'package:fina_me_animal/core/styles.dart';
import 'package:fina_me_animal/features/home/presentation/manager/cubit.dart';
import 'package:fina_me_animal/features/home/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        builder: (context, state) {
          return SizedBox(
            height: 140,
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    width: 1.6, color: const Color.fromARGB(143, 255, 86, 34)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 140,
                    margin: EdgeInsets.all(13),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "$imagePath",
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(500)),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Dog Name",
                          style: Fonts.dogName,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 10),
                        child: Text(
                          "dog type",
                          style: Fonts.dogType,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.date_range_sharp,
                              color: Colors.deepOrange[200],
                            ),
                            Text(
                              "8 months",
                              style: Fonts.dogAge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 70, left: 30, top: 30),
                    child: InkWell(
                      onTap: () {
                        context.read<AppCubit>().choosenHeart();
                      },
                      child: Icon(
                        Icons.favorite,
                        color: context.read<AppCubit>().heart
                            ? Colors.orange
                            : Color.fromARGB(129, 0, 0, 0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
