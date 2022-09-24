import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/pages/avatar_pages.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_pages.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/input_pages.dart';
import 'package:componentes/src/pages/slider_pages.dart';
import 'package:componentes/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPages(),
    'avatar': (BuildContext context) => AvatarPages(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimetedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'sliders': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
