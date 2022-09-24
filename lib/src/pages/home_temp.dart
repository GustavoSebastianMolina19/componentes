// ignore_for_file: deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';

class HomePageTeme extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Color.fromRGBO(0, 159, 255, 1),
        ));
    }

    return lista;
  }

  List<Widget> _crearItemCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.accessibility_rounded),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
