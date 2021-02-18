import 'package:flutter/material.dart';
import 'package:xiangyi_proj/mrt.dart';
import 'package:xiangyi_proj/profile.dart';
import 'package:xiangyi_proj/setting.dart';
import 'drawer.dart';
import 'bus.dart';
import 'profile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'TravEstimator';
  int index = 0;
  List<Widget>list = [Login(), Mrt(), Bus(), Profile(), Setting(), Login()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // body: Home(),
        // drawer: MyDrawer(),
        body: list[index],
        drawer: MyDrawer(onTap: (context, i, txt) {
          setState(() {
            index = i;
            title: txt;
            Navigator.pop(context);
          });
        },
       ),
      ),
    );
  }
}


class Login extends StatelessWidget {
  bool _disableButton = false;

  handleClick(name) {
    print('$name clicked');
  }

 @override
  Widget build(BuildContext context) {
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
      );
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.blue),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
              contentPadding: const EdgeInsets.all(20),
             ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.blue),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
              contentPadding: const EdgeInsets.all(20),
            ),
           ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:RaisedButton(
             child: Text('Login'),
             onPressed: (){
               Navigator.push(
                   context,
               MaterialPageRoute(builder:(context)=>MyApp()),
                 );
               },
            ),
          ),
        ],
      ),
    );
  }
}

var contentBody = Login();