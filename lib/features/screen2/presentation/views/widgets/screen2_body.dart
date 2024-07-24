import 'package:fina_me_animal/features/home/presentation/manager/cubit.dart';
import 'package:fina_me_animal/features/home/presentation/manager/state.dart';
import 'package:fina_me_animal/features/screen2/presentation/views/widgets/about.dart';
import 'package:fina_me_animal/features/screen2/presentation/views/widgets/fact.dart';
import 'package:fina_me_animal/features/screen2/presentation/views/widgets/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen2Body extends StatelessWidget {
  const Screen2Body({super.key, required this.imagePath3, required this.dogName3, required this.dogAge3, required this.dogType3});
 final String imagePath3, dogName3, dogAge3, dogType3;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              context.read<AppCubit>().choosenHeart();
            },
            child: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Icon(
                  Icons.favorite,
                  color: context.read<AppCubit>().heart
                      ? Colors.orange
                      : Color.fromARGB(129, 0, 0, 0),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Fact(dogName4: dogName3, dogAge4: dogAge3, dogType4: dogType3),
          Photo(path: imagePath3),
          About(imagePath: imagePath3, dogName: dogName3, dogAge: dogAge3, dogType: dogType3,)
        ],
      ),
    );
  }
}