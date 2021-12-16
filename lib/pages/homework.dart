import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  const Homework({ Key? key }) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Homework'),
      centerTitle: true,
      backgroundColor: Colors.brown.shade900,
    ),
    
    body: SingleChildScrollView(
      child:  
      
      Container(
                  color: Colors.transparent,
                  child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.brown.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: new Center(
                      child: Column(
                        children: <Widget>[
                          const Text('Upload Homework', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter subject name.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.question_answer),
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter test description.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.details),
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Instructions",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter test Date.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_view_day),
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Date",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),
                          
                          const SizedBox(height: 12),
                          Card(
                            child: new InkWell(
                              onTap: () {
                              },
                              child: Container(
                                width: 250.0,
                                height: 50.0,
                                child: ListTile(
                                  leading: Icon(Icons.upload),
                                  title: Text('Select File', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                ),                              
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Upload'),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
                
    ),
  );
}