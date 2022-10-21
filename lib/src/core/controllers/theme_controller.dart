import 'package:aplicacion_notas/src/core/services/preferences_services.dart';
import 'package:aplicacion_notas/src/ui/configure.dart';
import 'package:flutter/cupertino.dart';

class ThemeController {
  //*Constructor privado
  ThemeController._();

  static final instance = ThemeController._();

  ValueNotifier<bool> brightness = ValueNotifier<bool>(true);

  bool get brightnessValue => brightness.value;

  //*Si es verdadero light si no dark
  Color primary() =>
      brightnessValue ? Configure.PRIMARY : Configure.PRIMARY_DARK;
  Color secondary() => Configure.SECONDARY;
  Color auxiliar() => Configure.AUXILIAR;
  Color accent() => Configure.ASSENT;
  //*Si es verdadero light si no dark
  Color primaryButton() => brightnessValue
      ? Configure.PRIMARY_BUTTON_LIGHT
      : Configure.PRIMARY_BUTTON_DARK;
  Color secondaryButton() => Configure.SECONDARY_BUTTON_LIGHT;
  Color background() =>
      brightnessValue ? Configure.BACKGRUND_LIGHT : Configure.BACKGRUND_DARK;

  void changeTheme() async {
    brightness.value = !brightness.value;
    await PreferencesServices.instance.setBool("tema", brightness.value);
  }

  Future<void> initTheme() async {
    brightness.value = await PreferencesServices.instance.getBool("temea");
  }
}
