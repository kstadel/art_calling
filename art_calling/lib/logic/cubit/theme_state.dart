part of 'theme_cubit.dart';

class ThemeState {
  final ThemeMode themeModeDark;

  ThemeState({required this.themeModeDark});

  ThemeState copyWith({
    required ThemeMode themeModeDark,
  }) {
    return ThemeState(
      themeModeDark: themeModeDark,
    );
  }
}
