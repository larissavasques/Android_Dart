import 'package:flutter/material.dart';
import 'layoutPrincipal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Atividade02'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  var _context;
  void _telaMenu() {
    setState((){
      Navigator.push(_context,
        MaterialPageRoute(builder: (BuildContext context){
          return MyFirstBottomNavigationBar();
        })
      );
    });
  }

  
  @override
  Widget build(BuildContext context) {
    this._context = context;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Segunda Atividade", style: Theme.of(context).textTheme.headline4),
              FlatButton(
                color: Colors.purple,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.black,
                onPressed: _telaMenu,
                child: Text(
                  "Acessar",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),     
    );
  }
}
