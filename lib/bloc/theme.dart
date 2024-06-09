import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);

  void toggleTheme() async {
    if(state == true){
      emit(false);
    }else {
      emit(true);
    }
  }
}