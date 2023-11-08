import 'package:flutter/material.dart';

class myjio_home extends StatelessWidget {
  const myjio_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome TO My Jio Home'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('Mobiles'),
            onTap: () {
              // Add navigation logic to navigate to the mobiles page.
              // Navigator.push(context, MaterialPageRoute(builder: (context) => MobilesPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.tablet),
            title: Text('Tablets'),
            onTap: () {
              // Add navigation logic to navigate to the tablets page.
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TabletsPage()));
            },
          ),
          // Add more categories here
        ],
      ),
    );
  }
}
