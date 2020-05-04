import 'package:flutter/material.dart';
import 'package:flutter_sql/screens/note_detail.dart';
import 'package:flutter_sql/screens/query.dart';
import 'package:flutter_sql/screens/exportToExcel.dart';

import 'screens/note_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex = 0;

 final _pageOptions = [
   NoteDetail(), // Burada herhangi bir değer vermediğiniz için hata veriyor.
   NoteList(),
   Query(),
   ExportToExcel(),
   
 ];
  
  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("YkMobim"), backgroundColor: Colors.lightBlue[900]),
      body: _pageOptions[_selectedTabIndex],
      //Center(child: _pageOptions[_selectedTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _changeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Veri Girişi")),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),title: Text("Listeleme")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Arama")),
          BottomNavigationBarItem(
             icon: Icon(Icons.cloud_download), title: Text("Excel Aktarma")),
        ],
      ),
    );
  }
}


