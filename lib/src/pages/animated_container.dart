import 'package:flutter/material.dart';
import 'dart:math';

class AnimetedContainerPage extends StatefulWidget {
  @override
  _AnimetedContainerPageState createState() => _AnimetedContainerPageState();
}

class _AnimetedContainerPageState extends State<AnimetedContainerPage> {
  double _witdh = 50.0;
  double _heing = 50.0;
  Color? _color = Colors.cyan[100];

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animacion'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _witdh,
          height: _heing,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          curve: Curves.easeInOutExpo,
          duration: Duration(seconds: 2),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma,
        child: Icon(Icons.play_arrow_outlined),
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _witdh = random.nextInt(300).toDouble();
      _heing = random.nextInt(300).toDouble();
      _color = Color.fromARGB(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
