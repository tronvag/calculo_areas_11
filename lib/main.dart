import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CALCULO DE AREAS',
      theme: new ThemeData(          
        primaryColor: Colors.blueGrey,
      ),

      home: new RandomWords(),
    );
  }
}


class RandomWordsState extends State<RandomWords> {
 // final List<WordPair> _suggestions = <WordPair>[];
  //final Set<WordPair> _saved = new Set<WordPair>();  
  //final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold (                  
      appBar: new AppBar(
        title: new Text('CALCULO DE AREAS'),          
      ),

      body:
          new Column(

            children: <Widget>[

              Container(
                padding: EdgeInsets.all(26.0),
                child: Center(

              child:new Text("Selecciona una figura",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.lightBlue)),

              ),
              ),
              new Expanded(

                child: new  ListView(
                  padding: new EdgeInsets.symmetric(vertical: 5.0),
                  children: <Widget>[
                         /* ListTile (
                            title: Text('Texto'),
                          )*/
                   new GestureDetector(
                      onTap:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      }
                      ,
                      child: new Card(

                          child: new Row(
                           children: <Widget>[
                             new  IconButton(icon: const Icon(Icons.arrow_drop_down)),
                             new Column(
                               children: <Widget>[
                                 new Text("Triángulo")
                               ],
                             )
                              ]
                          )

                      ),
                    )
                    ,
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      }
                      ,
                      child: new Card(

                          child: new Row(
                              children: <Widget>[
                                new  IconButton(icon: const Icon(Icons.border_horizontal)),
                                new Column(
                                  children: <Widget>[
                                    new Text("Rectagulo")
                                  ],
                                )
                              ]
                          )

                      ),
                    )
                    ,
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      }
                      ,
                      child: new Card(

                          child: new Row(
                              children: <Widget>[
                                new  IconButton(icon: const Icon(Icons.block)),
                                new Column(
                                  children: <Widget>[
                                    new Text("Circulo")
                                  ],
                                )
                              ]
                          )

                      ),
                    )

                  ],
                ),
              ),
        ],
            ),


    );

  }



  Widget onTapTriangle() {

  }

  Widget onTapRectangle() {

  }
Widget onTapCirculo() {

  }


}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area"),
      ),
      body:
        new Column(
          children: <Widget>[
            new Text("Base"),
            new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ingresa la Base'
              ),
            ),
            new Text("Altura"),
            new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ingresa la Altura'
              ),
            ),

          ],


        )


    );
  }
}