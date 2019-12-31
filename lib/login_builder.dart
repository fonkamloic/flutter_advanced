import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildEmail(),
                  _buildPassword(),
                  _buildLoginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    blurRadius: 5.0,
                    offset: Offset(0, 5))
              ]),
          height: 55.0,
          child: TextField(
            onChanged: (value) {
              _email = value;
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Enter your Email',
              hintStyle: TextStyle(color: Colors.white, fontFamily: 'Lobster'),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(top: 10.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    blurRadius: 5.0,
                    offset: Offset(0, 5))
              ]),
          height: 55,
          child: TextField(
            onChanged: (value) {
              _password = value;
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Enter your Password',
              hintStyle: TextStyle(color: Colors.white, fontFamily: 'Lobster'),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(top: 10.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
            // validator: (input) => input.contains('@') ? null : 'Please enter a valid email' ,
            // onSaved: (input) => _email = input,
          ),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: RaisedButton(
        padding: EdgeInsets.all(7.0),
        color: Colors.white,
        onPressed: () {
          print(_email);
          print(_password);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          'LOGIN',
          style: TextStyle(
              fontFamily: 'Baloo Bhai',
              fontSize: 25,
              color: Colors.deepPurpleAccent,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
