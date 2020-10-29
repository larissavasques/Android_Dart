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
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Atividade01'),
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
    setState(() {
      Navigator.push(_context,
          MaterialPageRoute(builder: (BuildContext context) => LayoutPrincipal()));
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
              Text("Primeira Atividade", style: Theme.of(context).textTheme.headline4),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: _telaMenu,
                child: Text(
                  "Layout",
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
