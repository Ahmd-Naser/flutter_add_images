// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
            
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Scania",
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    
                      padding: EdgeInsets.all(9),
                      child: SvgPicture.asset(
                        "assets/img/f.svg",
                        color: Colors.blue,
                        height: 50,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Container(
                      
                      padding: EdgeInsets.all(9),
                      child: SvgPicture.asset(
                        "assets/img/icons8-twitter.svg",
                        color: Colors.blue,
                        height: 50,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Container(
                      
                      padding: EdgeInsets.all(9),
                      child: SvgPicture.asset(
                        "assets/img/icons8-linked-in.svg",
                        color: Colors.blue,
                        height: 50,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
