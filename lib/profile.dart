import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // return Container(
      return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Container(
        width: 60,
        height: 60,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/me.jpeg'),
          ),
        ),
        SizedBox(height: 15,),
        Text('Email: testing@nyp.edu.sg',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black),
            ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter Your New Password',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                )
              )
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter new password';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Changes Made')));
                }
              },
              child: Text('Confirm'),
            ),
          ),
          Text('Saved Bus Stop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,),
            ),
          Text('573823',
          style: TextStyle(color: Colors.blue,
          fontSize: 20.0),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
                ),
                hintText: 'Input Bus Stop Number',
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                )
              )
            ),
            
          ),
          Text('Saved MRT Station',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,),
            ),
            Text('Yishun',
          style: TextStyle(color: Colors.blue,
          fontSize: 20.0),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
                ),
                hintText: 'Input MRT Station',
              )
            ),
        ],
      ),
    );
  }
}
