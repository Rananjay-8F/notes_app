import 'package:flutter/material.dart';

class ADDNOTE extends StatefulWidget {
  static String id = 'addnote';
  @override
  _ADDNOTEState createState() => _ADDNOTEState();
}

class _ADDNOTEState extends State<ADDNOTE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note')),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Done'
              ),
              keyboardType: TextInputType.name
            ),
            Row(
              children: [
                ElevatedButton(
                  child: Text('Add Note'),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
