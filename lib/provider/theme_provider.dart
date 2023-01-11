// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ThemeProvider with ChangeNotifier {
//   bool isLightTheme;
//   ThemeProvider({required this.isLightTheme});

//   getCurrentStatusNavBarColor() {
//     if (isLightTheme) {
//       SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         statusBarIconBrightness: Brightness.dark,
//         systemNavigationBarColor: Colors.white,
//         systemNavigationBarIconBrightness: Brightness.dark,
//       ));
//     } else {
//       SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         statusBarIconBrightness: Brightness.light,
//         systemNavigationBarColor: Colors.black,
//         systemNavigationBarIconBrightness: Brightness.light,
//       ));
//     }
//   }

//   toggleTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     isLightTheme = !isLightTheme;
//     getCurrentStatusNavBarColor();
//     prefs.setBool('isLightTheme', isLightTheme);
//     notifyListeners();
//   }

//   ThemeData getTheme() {
//     if (isLightTheme) {
//       return ThemeData(
//         brightness: Brightness.light,
//         scaffoldBackgroundColor: Colors.yellow,
//         textTheme: TextTheme(
//           headline1: GoogleFonts.stickNoBills(
//             textStyle: const TextStyle(
//               color: Colors.black,
//               fontSize: 72,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       );
//     }
//     return ThemeData(
//       brightness: Brightness.dark,
//       scaffoldBackgroundColor: Colors.black,
//       textTheme: TextTheme(
//         headline1: GoogleFonts.stickNoBills(
//           textStyle: const TextStyle(
//             fontSize: 72,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   ThemeMode themeMode() {
//     if (isLightTheme) {
//       return ThemeMode(
//         gradientColors: [Colors.yellow, Colors.orange],
//         switchColor: Colors.white,
//         thumbColor: Colors.white,
//         switchBgColor: Colors.black,
//         dividerColor: Colors.black,
//       );
//     }
//     return ThemeMode(
//       gradientColors: [Colors.grey, Colors.black],
//       switchColor: Colors.black,
//       thumbColor: Colors.black,
//       switchBgColor: Colors.white,
//       dividerColor: Colors.white,
//     );
//   }
// }

// class ThemeMode {
//   List<Color>? gradientColors;
//   Color? switchColor;
//   Color? thumbColor;
//   Color? switchBgColor;
//   Color? dividerColor;
//   Color? bgColor;

//   ThemeMode({
//     this.gradientColors,
//     this.switchColor,
//     this.thumbColor,
//     this.switchBgColor,
//     this.dividerColor,
//     this.bgColor,
//   });
// }
