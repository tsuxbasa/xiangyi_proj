import 'package:flutter/material.dart';

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        CheckboxListTile(
            value: true,
            title: Text("Allow App to Detect Current Location"),
            onChanged: (value) {},
            ),
        SwitchListTile(
            value: false,
             title: Text("Allow App Notification"),
            onChanged: (value) {},
          ),
        ]
        ),
    );
  }
}