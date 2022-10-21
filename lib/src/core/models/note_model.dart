// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aplicacion_notas/src/core/constants/parameters.dart';

class Note {
  String? title;
  String? date;
  String? description;
  bool private;
  List<String>? urls;
  String? image;
  TipoNota type;
  EstadoNota state;

  Note({
    this.title,
    this.date,
    this.description,
    this.private = false,
    this.urls,
    this.image,
    this.type = TipoNota.Text,
    this.state = EstadoNota.Visible,
  });
}

Note note = Note(
    title: "Primera Nota",
    description: "Primera nota desc",
    date: "10/08/2022");
