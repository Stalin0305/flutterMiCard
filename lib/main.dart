import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/stalin.jpg'),
              ),
              Text(
                'Stalin Christopher',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'STUDENT',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.teal[200],
                  fontFamily: 'Source sans',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 190,
                child: Divider(
                  color: Colors.teal[200],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                color: Colors.white,
                // padding: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: <Widget>[
                      //Here we have wrapped the child of the card widget with padding(i.e row is wrapped
                      Icon(
                        //with padding widget, there is another alternate way of using listTile
                        Icons.phone, // which is showcased in next card
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '+91 968 609 1780',
                        style: TextStyle(
                          fontFamily: 'Source sans',
                          fontSize: 18,
                          color: Colors.teal[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                // padding: EdgeInsets.all(15),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'stalins205@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Source sans',
                      fontSize: 18,
                      color: Colors.teal[900],
                    ),
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
