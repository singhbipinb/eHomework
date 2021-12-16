import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  const Timetable({ Key? key }) : super(key: key);

  @override
  _TimetableState createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Time Table'),
      centerTitle: true,
      backgroundColor: Colors.brown.shade900,
    ),
    
    body: SingleChildScrollView(
      child:  Form(
        child: Column(
          children: <Widget>[

            Container(  
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),  
              child: Table(  
                defaultColumnWidth: const FixedColumnWidth(85.0),  
                border: TableBorder.all(  
                  color: Colors.brown.shade900,  
                  style: BorderStyle.solid,  
                  width: 1
                ),  
                children: [  
                  TableRow( children: [  
                    Column(children:const [Text('Time', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('9:30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                    Column(children:const [Text('10:30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('11:30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    
                  ]),
                  TableRow( children: [
                    Column(children:const [Text('Subject', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('Monday', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('Tuesday', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('Wednesday', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                   
                  ]), 

                  TableRow( children: [
                    Column(children:const [Text('Maths', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('English', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('Science', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('C S', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                   
                  ]),


                  TableRow( children: [
                    Column(children:const [Text('Monday', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('MAD-II', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('BlockChain', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('BigData', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                   
                  ]),
                   
                  
                   
                   
                ],  
              ),  
            ), 
          ],
        ),
      ),
    ),
  );
}