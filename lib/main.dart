import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Lago Villarica Chile1',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  'Paisajes de Chile y sus alrededores',
                  style: new TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text('669'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'Llamar'),
          buildButtonColumn(Icons.near_me, 'Ruta'),
          buildButtonColumn(Icons.share, 'Compartir'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        'El lago Villarrica o Mallolafquén (nombre en mapudungun) se encuentra ubicado al sureste de la Provincia de Cautín y al norte del Volcán Villarrica, en la Región de la Araucanía, Chile. Al poniente se ubica la ciudad homónima y al oriente la de Pucón.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'layout demo Simple',
      home: Scaffold(
        appBar: AppBar(
          title: Text('layout demo Simple'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/villarrica.jpeg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
