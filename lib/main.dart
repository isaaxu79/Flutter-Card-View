import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyCard(title: 'My first card :)'),
    );
  }
}

class MyCard extends StatefulWidget {
  MyCard({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyCard createState() => _MyCard();
}

class _MyCard extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(
                  'https://media.giphy.com/media/VEt9ppUFuLq2KdiGdt/giphy.gif',
                  fit: BoxFit.fill,
                ),
                const ListTile(
                  title: Padding(
                      padding: EdgeInsets.only(top: 18, bottom: 10),
                      child: Text('Japanese Cat Sushi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                  subtitle: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                      'Vive la vide loka, i love sushi, los gatos comiendo sushi son lo mejor, me gustaria tener uno'),
                    ),
                ),
                ButtonBar(
                  children: <Widget>[
                    /*FlatButton(
              child: const Text('BUY TICKETS'),
              onPressed: () {/* ... */},
            ), */
                    FlatButton(
                      child: const Text('Ver mas'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPicture()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class ShowPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Details page"),
      ),
      body: Center(
        child: Image.network(
          'https://media.giphy.com/media/VEt9ppUFuLq2KdiGdt/giphy.gif',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
