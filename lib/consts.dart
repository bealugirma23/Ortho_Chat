// import 'package:flutter/material.dart';

// const backgroundcolor = Color(0xFFF2F2F2);
// const oncontaner = Color.fromARGB(255, 0, 0, 0);
// const offcontainer = Color(0xFFECE6F0);
// const grayed = Color(0xFFD9D9D9);
// const yel = Color(0xFFFFC900);
// ////vertical spacing
// Widget sizver(double height) {
//   return SizedBox(
//     height: height,
//   );
// }

// ////horizontal spaciing
// Widget sizhor(double width) {
//   return SizedBox(
//     width: width,
//   );
// }

// ////////////////////////////

// ThemeData _buildShrineTheme() {
//   final ThemeData base = ThemeData.light();
//   return base.copyWith(
//     primaryColor: shrinePink100,
//     buttonColor: shrinePink100,
//     scaffoldBackgroundColor: shrineBackgroundWhite,
//     cardColor: shrineBackgroundWhite,
//     errorColor: shrineErrorRed,
//     buttonTheme: const ButtonThemeData(
//       colorScheme: _shrineColorScheme,
//       textTheme: ButtonTextTheme.normal,
//     ),
//     primaryIconTheme: _customIconTheme(base.iconTheme),
//     textTheme: _buildShrineTextTheme(base.textTheme),
//     primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
//     accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
//     iconTheme: _customIconTheme(base.iconTheme), switchTheme: SwitchThemeData(
//  thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
//  if (states.contains(MaterialState.disabled)) { return null; }
//  if (states.contains(MaterialState.selected)) { return shrinePink400; }
//  return null;
//  }),
//  trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
//  if (states.contains(MaterialState.disabled)) { return null; }
//  if (states.contains(MaterialState.selected)) { return shrinePink400; }
//  return null;
//  }),
//  ), 
//  radioTheme: RadioThemeData(
//  fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
//  if (states.contains(MaterialState.disabled)) { return null; }
//  if (states.contains(MaterialState.selected)) { return shrinePink400; }
//  return null;
//  }),
//  ), 
//  checkboxTheme: CheckboxThemeData(
//  fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
//  if (states.contains(MaterialState.disabled)) { return null; }
//  if (states.contains(MaterialState.selected)) { return shrinePink400; }
//  return null;
//  }),
//  ), colorScheme: _shrineColorScheme.copyWith(secondary: shrineBrown900),
//   );
// }

// IconThemeData _customIconTheme(IconThemeData original) {
//   return original.copyWith(color: shrineBrown900);
// }

// TextTheme _buildShrineTextTheme(TextTheme base) {
//   return base
//       .copyWith(
//         caption: base.caption?.copyWith(
//           fontWeight: FontWeight.w400,
//           fontSize: 14,
//           letterSpacing: defaultLetterSpacing,
//         ),
//         button: base.button?.copyWith(
//           fontWeight: FontWeight.w500,
//           fontSize: 14,
//           letterSpacing: defaultLetterSpacing,
//         ),
//       )
//       .apply(
//         fontFamily: 'Rubik',
//         displayColor: shrineBrown900,
//         bodyColor: shrineBrown900,
//       );
// }

// const ColorScheme _shrineColorScheme = ColorScheme(
//   primary: shrinePink100,
//   primaryContainer: shrineBrown900,
//   secondary: shrinePink50,
//   secondaryContainer: shrineBrown900,
//   surface: shrineSurfaceWhite,
//   background: shrineBackgroundWhite,
//   error: shrineErrorRed,
//   onPrimary: shrineBrown900,
//   onSecondary: shrineBrown900,
//   onSurface: shrineBrown900,
//   onBackground: shrineBrown900,
//   onError: shrineSurfaceWhite,
//   brightness: Brightness.light,
// );

// const Color shrinePink50 = Color(0xFFFEEAE6);
// const Color shrinePink100 = Color(0xFFFEDBD0);
// const Color shrinePink300 = Color(0xFFFBB8AC);
// const Color shrinePink400 = Color(0xFFEAA4A4);

// const Color shrineBrown900 = Color(0xFF442B2D);
// const Color shrineBrown600 = Color(0xFF7D4F52);

// const Color shrineErrorRed = Color(0xFFC5032B);

// const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
// const Color shrineBackgroundWhite = Colors.white;

// const defaultLetterSpacing = 0.03;
