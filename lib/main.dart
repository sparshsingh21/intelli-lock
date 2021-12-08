import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intelli-Lock", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black,),
        actions: [Icon(Icons.search, color: Colors.black,size: 25.0,),
        Icon(Icons.home_outlined, color: Colors.black,size: 25.0,)],
      ),
      body: Stack(
        children: [
        Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,),
        Positioned(
          left: 60.0,
          top: 90.0,
          child:Column(
            children: [
              Container(height: 300.0,width: 250.0,color: Colors.grey,),
              SizedBox(height: 69.0,),
              Row(children: [
                MaterialButton(onPressed: () {},
                // highlightColor: Colors.transparent,
                // focusColor: Colors.transparent,
                // hoverColor: Colors.transparent,
                // splashColor: Colors.transparent,
                child: Container(height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Center(child:Text("Accept")),),),
                MaterialButton(onPressed: () {},
                child: Container(height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Center(child:Text("Reject")),),)
              ],)
            ],
          )),
      ],
      ),
    );
  }
}