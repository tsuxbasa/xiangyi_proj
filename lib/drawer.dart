import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
 final Function onTap;
 MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/me.jpeg'),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('testing123',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                    SizedBox(height: 3,),
                    Text('testing@nyp.edu.sg',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,),
                      ),
                 ],
               ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap:()=>onTap(context, 0, 'Login'),
            ),
            ListTile(
              leading: Icon(Icons.directions_train),
              title: Text('Mrt'),
              onTap:()=>onTap(context, 1, 'Mrt'),
            ),
            ListTile(
              leading: Icon(Icons.directions_bus),
              title: Text('Bus'),
              onTap:()=>onTap(context, 2, 'Bus'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap:()=>onTap(context, 3, 'Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap:()=>onTap(context, 4, 'Setting'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap:()=>onTap(context, 0, 'Login'),
            ),
          ],
        ),
      ),
    );
  }
}