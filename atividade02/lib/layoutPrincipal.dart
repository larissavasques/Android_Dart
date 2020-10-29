import 'package:atividade02/components/forms.dart';
import 'package:flutter/material.dart';
import 'views.dart';

class MyFirstBottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyBottomNavigationBar();
  }
}

class _MyBottomNavigationBar extends State<MyFirstBottomNavigationBar> {
  int _currentPage = 0;
  var _pages;
  
  @override
  void initState() {
    super.initState();

    _currentPage = 0;
    _pages = [
      //Container(child: Text("Page 1 - Biografia Isabela")),
      generateIsabelaView(),

      //Text("Page 2 - Biografia Larissa"),
      generateLarissaView(),

      //Text("Page 3 - Formulários")
      //FormNovoAlimento(),
      SegundoFormWidget(),
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Gerenciador de Layout",
        theme: ThemeData(
        
        primarySwatch: Colors.purple,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: Scaffold(
            body: Center(child: _pages.elementAt(_currentPage)),
            appBar: AppBar(title: Text("Atividade02")),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.face), title: Text("Isabela")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.tag_faces), title: Text("Larissa")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), title: Text("Formulários"))
              ],
              fixedColor: Colors.purple,
              currentIndex: _currentPage,
              onTap: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
            )));
               
  }
}



