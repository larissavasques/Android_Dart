import 'package:flutter/material.dart';
import 'views.dart';

class LayoutPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Gerenciador de Layout",
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                title: Text("Gerenciador de Layout"),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Text("Isabela")),
                    Tab(icon: Text("Larissa")),
                    Tab(icon: Text("Projeto")),
                  ],
                )
              ),
              body: TabBarView(children: [
                Center(child: generateIsabelaView()),
                Center(child: generateLarissaView()),
                Center(child: generateProjetoView()),
              ]),
          )
        )
    );
                
        
  }
}



