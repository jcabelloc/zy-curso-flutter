import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: new Padding(
          padding: const EdgeInsets.all(24.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
                radius: 48,
              ),
              new Text(
                'Juan Cabello',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: Colors.white60,
              ),
              SizedBox(
                height: 12,
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+51 996780913',
                    style: TextStyle(color: Colors.teal, fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'jcabelloc@itana.pe',
                    style: TextStyle(color: Colors.teal, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
