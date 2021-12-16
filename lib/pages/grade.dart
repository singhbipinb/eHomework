import 'package:flutter/material.dart';

class Grade extends StatefulWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  _GradeState createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Grades'),
          centerTitle: true,
          backgroundColor: Colors.brown.shade900,
        ),
        body: SingleChildScrollView(
          child:Container(
      padding: const EdgeInsets.all(100),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text( 
                    "Student Name",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
              Container(  
              margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),  
              child: Table(  
                defaultColumnWidth: const FixedColumnWidth(85.0),  
                border: TableBorder.all(  
                  color: Colors.black12,  
                  style: BorderStyle.solid,  
                  width: 2
                ),  
                children: [  
                  TableRow( children: [  
                    Column(children:const [Text('Subject Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('Grade', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]) 
                  ]),

                  TableRow( children: [
                    Column(children:const [Text('Discrete Math', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('54', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])
                  ]),
                  TableRow( children: [
                    Column(children:const [Text('IoT', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('67', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])
                  ]),
                  TableRow( children: [
                    Column(children:const [Text('Big Data', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('32', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])
                  ]),

                  TableRow( children: [
                    Column(children:const [Text('MAD-II', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('56', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])
                  ]),
                  TableRow( children: [
                    Column(children:const [Text('Block Chain', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('34', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])
                  ]),
                  
                   
                  
                ],  
              ),  
            ), 
            ],
          ),
        ],
      ),
    ), 
          ),
      );
}
