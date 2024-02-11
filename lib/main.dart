// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: SimpleProject(),
    );
  }
}

class SimpleProject extends StatelessWidget {
  const SimpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Facebook"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 33,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
              )),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/img/1.jpeg",
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            
            ),
          ),
          Image.network(
            "https://avatars.githubusercontent.com/u/127310308?v=4",
            height: 300,

            loadingBuilder: (context, child, progress){
              return progress == null ? child : CircularProgressIndicator();
            },
          ),
          Text(
            "Hello, Norman 👋",
            style: TextStyle(fontSize: 30, fontFamily: "myfont"),
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/img/Okabe.jpeg"),
            radius: 50,
          )
      ]),
    );
  }
}
