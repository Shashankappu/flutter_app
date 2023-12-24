import 'package:flutter/material.dart';

import '../widgets/MyDrawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage"),),
      body: Column(
        children: [
          Center(child: Text("Welcome Home",style: TextStyle(color: Colors.deepOrange.shade500,fontSize: 32.0,))),
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
