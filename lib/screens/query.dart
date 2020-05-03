import 'package:flutter/material.dart';

class Query extends StatefulWidget {
  @override
  _QueryState createState() => _QueryState();
}

class _QueryState extends State<Query> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldKey,
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text("Excel'e Aktar"),
        ),
      ),
    );
  }
}
