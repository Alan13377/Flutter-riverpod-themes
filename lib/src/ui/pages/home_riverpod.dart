import 'package:aplicacion_notas/src/core/controllers/theme_controller.dart';
import 'package:aplicacion_notas/src/core/models/note_model.dart';
import 'package:aplicacion_notas/src/core/providers/theme_provider.dart';
import 'package:aplicacion_notas/src/ui/configure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

GlobalKey<ScaffoldState> HomeRiverpodKey = GlobalKey<ScaffoldState>();

class HomeRiverpod extends StatelessWidget {
  HomeRiverpod({super.key});
  static const HOME_RIVERPOD_ROUTE = "home_riverpod";

  @override
  Widget build(BuildContext context) {
    //*Controlador del tema
    return Scaffold(
        key: HomeRiverpodKey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Primer Texto",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            DarkModeSwitch()
          ],
        ));
  }
}

//**Switch DarkMode */
class DarkModeSwitch extends ConsumerWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(ThemeAppProvider);
    return Switch(
      value: model.isDarkModeEnable,
      onChanged: (value) {
        if (value) {
          print(value);
          model.setDarkMode();
          print(model.setDarkMode);
        } else {
          model.setLightTheme();
        }
      },
    );
  }
}
