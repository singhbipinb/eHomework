import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({ Key? key }) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        centerTitle: true,
        backgroundColor: Colors.brown.shade900,
      ),
      body: Material(
      child: Column(
        children: [
          Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.text_snippet_outlined),
                        title: Text('Maths',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Complete its within time',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('22nd Dec 2021',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('Show Data',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
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
                          const Text('Add Notes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter note title.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                             
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Notes Title",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter note description.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Description",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter note Date.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Date",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),
                          
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Add Notes'),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
        ],
      ),
      ),
    );
  }
}