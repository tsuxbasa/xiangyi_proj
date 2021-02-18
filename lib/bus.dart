import 'package:flutter/material.dart';
import 'dart:async';

class Bus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
                ),
                hintText: 'Current Bus Stop No.',
                labelText: 'Input Bus Stop No.',
                helperText: 'Enter 6 Numbers ONLY.',
              )),
          color: Colors.indigo[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
                ),
                hintText: 'Destination Bus Stop No.',
                labelText: 'Input Bus Stop No.',
                helperText: 'Enter 6 Numbers ONLY.',
              )),
          color: Colors.indigo[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Text('Saved Bus Stop:',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,),
            ),
            color: Colors.indigo[100],
          ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Text('Recent Bus Stop:',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,),
            ),
            color: Colors.indigo[100],
          ),
      ],
    );
  }
}


//Show Distance
class MyCustomStatefulWidget extends StatefulWidget {
  MyCustomStatefulWidget({Key key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

enum Answers { Okay, Close }

class _DisplayState extends State<MyCustomStatefulWidget> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch (await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Total Distance Needed: ____'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Okay'),
              onPressed: () {
                Navigator.pop(context, Answers.Okay);
              },
            ),
            SimpleDialogOption(
              child: Text('Close'),
              onPressed: () {
                Navigator.pop(context, Answers.Close);
              },
            ),
          ],
        );
      },
    )) {
      case Answers.Okay:
        _setValue('Okay');
        break;
      case Answers.Close:
        _setValue('Close');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_value),
        RaisedButton(
          onPressed: () => _askUser(),
          child: new Text('Calculate Now'),
        )
      ],
    );
  }
}