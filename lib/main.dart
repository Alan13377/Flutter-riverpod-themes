import 'package:aplicacion_notas/src/core/constants/data.dart';
import 'package:aplicacion_notas/src/core/controllers/theme_controller.dart';
import 'package:aplicacion_notas/src/core/providers/theme_provider.dart';
import 'package:aplicacion_notas/src/ui/pages/home_page.dart';
import 'package:aplicacion_notas/src/ui/pages/home_riverpod.dart';
import 'package:aplicacion_notas/src/ui/widgets/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

//**Riverpod */
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// void main() async {
//   runApp(const MyApp());
// }

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //*LLamado al provider
    final model = ref.watch(ThemeAppProvider);
    return MaterialApp(
      title: Constants.MAIN_TITLE,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      //*Definir temas
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      //*Cambio dinamico
      themeMode: model.isDarkModeEnable ? ThemeMode.dark : ThemeMode.light,
      routes: {
        HomePage.HOME_PAGE_ROUTE: (context) => HomePage(),
        HomeRiverpod.HOME_RIVERPOD_ROUTE: (context) => HomeRiverpod()
      },
      //initialRoute: HomeRiverpod.HOME_RIVERPOD_ROUTE,
      initialRoute: HomeRiverpod.HOME_RIVERPOD_ROUTE,
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return FutureBuilder(
//         future: ThemeController.instance.initTheme(),
//         builder: (context, snapshot) {
//           return MaterialApp(
//             title: Constants.MAIN_TITLE,
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
//             //*Definir temas
//             // theme: ThemeApp.lightTheme,
//             // darkTheme: ThemeApp.darkTheme,

//             routes: {
//               HomePage.HOME_PAGE_ROUTE: (context) => HomePage(),
//             },
//             //initialRoute: HomeRiverpod.HOME_RIVERPOD_ROUTE,
//             initialRoute: HomePage.HOME_PAGE_ROUTE,
//           );
//         });
//   }
// }
