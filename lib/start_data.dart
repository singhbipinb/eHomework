import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  HomeBodyState createState() => HomeBodyState();
}

class HomeBodyState extends State<HomeBody> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(

child: Table(  
                defaultColumnWidth: const FixedColumnWidth(85.0),  
                border: TableBorder.all(  
                  color: Colors.white,  
                  style: BorderStyle.solid,  
                  width: 0
                ),  
                children: [  
                  TableRow( children: [  
                    Column(children:const [Text('Time', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('9:30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                    Column(children:const [Text('10:30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('11:30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    
                  ]),
                  TableRow( children: [
                    Column(children:const [Text('Event', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('Submission', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:const [Text('Submission', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:const [Text('Submission', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                   
                  ]), 
                   
                  
                   
                   
                ],  
              ),  
      
    );
  }



}
