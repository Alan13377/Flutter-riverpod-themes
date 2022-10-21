import 'package:aplicacion_notas/src/ui/configure.dart';

import 'package:flutter/material.dart';

//**Temas de la aplicacion */
class ThemeApp {
  ThemeApp._();
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Configure.BACKGRUND_LIGHT,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Configure.PRIMARY,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Configure.BACKGRUND_DARK,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Configure.PRIMARY_DARK,
      ),
    ),
  );
}
