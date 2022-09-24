import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Pages'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('texto cualquiera del subtitulo de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Aceptar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqYcMuqFx1TqlSCRY6r_MuzgICkCxgYjHvDw&usqp=CAU'),
            fadeInDuration: Duration(seconds: 2),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          /*Image(
              image: NetworkImage(
                  'data:image/jpeg;base64,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')),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Texto'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
