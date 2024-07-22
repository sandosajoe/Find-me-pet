import 'package:bloc/bloc.dart';
import 'package:fina_me_animal/features/home/presentation/manager/state.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());
  bool heart = false;

  void choosenHeart() {
    heart = true;
    emit(ChoosenFavouriteColor());
  }
}
