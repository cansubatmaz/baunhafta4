import 'package:flutter/material.dart';

import 'nre_page.dart';
String city="Ankara";
Color color=Colors.black;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button this many times:',
            ),
            Text(
              city,
              style: TextStyle(
                  color: color,
                fontSize: 30,
                backgroundColor: Colors.yellow,
                fontWeight: FontWeight.bold,
              )
            ),

            SizedBox(
              height:150,
              child: ListView(

                shrinkWrap: true,
                children: [Center(
                  child:GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>NewPage()));
                    },
                    child:    Center(child: Text("Listview Texti",style:TextStyle(fontSize: 30),)),
                  )
                ),


                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),
                  Center(child: Text("Listview Texti")),









                ],),
            ),

            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: (){
                  if(city=="İstanbul"){
                    setState(() {
                      city="Ankara";
                      color = Colors.black;
                    });
                  }
                  else{
                    setState(() {
                      city="İstanbul";
                      color=Colors.grey;
                    });
                  }

                  print("BUTONA BASTIN");
                }, child: Text("Button",style: TextStyle(
                color: Colors.purpleAccent,
            fontSize:45,
            fontWeight:FontWeight.w400))),
          ],
        ),
      ),
    );
  }
}
