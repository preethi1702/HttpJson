import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  Future<String> getData() async {
    http.Response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/"),
        Headers: {"Accept": "application/json"});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text("Title"),
            onPressed: getData,
          ),
        ),
      );
    }
  }



