import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.camera),
            Icon(Icons.alarm),
            Icon(Icons.account_box)
          ],
        ),
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
                text: "Camera",
                // child: Text("This is camera"),
              ),
              Tab(
                icon: Icon(Icons.add_alarm),
                text: "Alarm",
                // child: Text("This is alarm"),
              ),
              Tab(
                icon: Icon(Icons.account_box), 
                text: "Box",
                // child: Text("This is alarm"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// class MyHomePage extends StatelessWidget {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World"),
//       ),
//       body: Text("${counter}"),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: (){
//           counter++;
//           print("counter value $counter");
//         },
//       ),
//     );
//   }
// }
