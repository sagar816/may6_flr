import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A App"),
          backgroundColor: Colors.yellow,
          actions: [Icon(Icons.search)],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            count++;
            setState((){});
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Contact"),
          ],
        ),
        drawer: Drawer(
          child: Text("This is drawer"),
        ),
        body: Center(
            child: Text("$count",
            style: TextStyle(
            fontSize: 40,
          ),
        )),
      ),
    );
  }
}
