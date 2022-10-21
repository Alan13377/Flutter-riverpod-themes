// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aplicacion_notas/src/core/constants/parameters.dart';

class Task {
  String? title;
  String? description;
  String? date;
  List<String>? urls;
  EstadoTarea state;

  Task({
    this.title,
    this.description,
    this.date,
    this.urls,
    this.state = EstadoTarea.Create,
  });
}
