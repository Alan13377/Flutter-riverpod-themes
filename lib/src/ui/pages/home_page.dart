import 'package:aplicacion_notas/src/core/controllers/theme_controller.dart';
import 'package:aplicacion_notas/src/core/models/note_model.dart';
import 'package:aplicacion_notas/src/ui/configure.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static const HOME_PAGE_ROUTE = "home_page";

  @override
  Widget build(BuildContext context) {
    //*Controlador del tema
    return ValueListenableBuilder(
        valueListenable: ThemeController.instance.brightness,
        builder: (context, value, child) {
          final theme = ThemeController.instance;
          return Scaffold(
              key: homePageKey,
              backgroundColor: theme.background(),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Primer Texto",
                      style: TextStyle(fontSize: 20, color: theme.primary()),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () => theme.changeTheme(),
                      child: Text("Cambiar tema")),
                ],
              ));
        });
  }
}
