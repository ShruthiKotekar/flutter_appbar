import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
         ),
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
   
        title: Text("Flutter App Bar Tutorial"),
        leading: Icon(Icons.account_circle_rounded),
        leadingWidth: 100, // default is 56
        backgroundColor: Colors.deepOrange[500],
        elevation: 15,
        actions: [
           Icon(Icons.search),
           Icon(Icons.more_vert),
           IconButton(
            icon: const Icon(Icons.add_alert),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You pressed bell icon.')));
            },
          ),
           
        ],
        toolbarHeight: 100, // default is 56
        toolbarOpacity: 0.5,
        shape: StadiumBorder(),
        centerTitle: true,
      ),
 
    );
  }
}
