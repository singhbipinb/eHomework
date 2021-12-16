import 'package:e_homework/start_data.dart';
import 'package:e_homework/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Menu(),
        appBar: AppBar(
          backgroundColor: Colors.brown.shade900,
          centerTitle: true,
          elevation: 1.0,
          title: Row(
            children: const [
              SizedBox(height: 25.0, child: Text("e Homework", textAlign: TextAlign.center)),
            ],
          ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.brown.shade300,
              height: 4.0,
            ),
            preferredSize: const Size.fromHeight(4.0)
          ),
        ),
        // Body
        body: const HomeBody(),
    );
  }
}
