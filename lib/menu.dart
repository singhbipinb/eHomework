import 'package:e_homework/pages/homework.dart';
import 'package:e_homework/pages/timetable.dart';
import 'package:e_homework/pages/notes.dart';
import 'package:e_homework/pages/grade.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.brown.shade500,
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.brown.shade700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Bipin Singh \n180017",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            PreferredSize(
                child: Container(
                  color: Colors.brown,
                  height: 4.0,
                ),
                preferredSize: const Size.fromHeight(4.0)),
            const SizedBox(height: 10),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(width: 5, color: Colors.brown.shade300)),
             
              title: const Text('Time Table'),
              hoverColor: Colors.red,
              tileColor: Colors.brown.shade50,
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Timetable();
                          },
                        ),
                      );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(width: 5, color: Colors.brown.shade300)),
              title: const Text('Homework'),
              hoverColor: Colors.red,
              tileColor: Colors.brown.shade50,
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Homework();
                          },
                        ),
                      );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(width: 5, color: Colors.brown.shade300)),
              
              title: const Text('Marks'),
              hoverColor: Colors.red,
              tileColor: Colors.brown.shade50,
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Grade();
                          },
                        ),
                      );
              },
            ),


            const SizedBox(height: 10),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(width: 5, color: Colors.brown.shade300)),
             
              title: const Text('Notes'),
              hoverColor: Colors.red,
              tileColor: Colors.brown.shade50,
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Notes();
                          },
                        ),
                      );
              },
            ),

          ],
        ),
      ),
    );
  }
}
