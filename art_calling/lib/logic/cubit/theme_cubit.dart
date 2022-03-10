import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeModeDark: ThemeMode.light));

  void toggleSetTheme(bool toggleValue) {
    emit(state.copyWith(
        themeModeDark: toggleValue ? ThemeMode.dark : ThemeMode.light));
  }
}
