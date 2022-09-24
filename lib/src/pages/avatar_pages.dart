import 'package:flutter/material.dart';

class AvatarPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar pages'),
        actions: [
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOrYHXuBi-TVfhP0Zqrq54ec9MUAUTOJWuVA&usqp=CAU'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('GS'),
              backgroundColor: Colors.blueGrey,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOrYHXuBi-TVfhP0Zqrq54ec9MUAUTOJWuVA&usqp=CAU'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
