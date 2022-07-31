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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //elevation: 8,
          title: const Text(
            'AppBar',
            style: TextStyle(color: Colors.black),
          ),
          // actions: [
          //   IconButton(
          //     icon: const Icon(
          //       Icons.add,
          //     ),
          //     onPressed: () {},
          //   ),
          //   IconButton(
          //     icon: const Icon(
          //       Icons.person,
          //     ),
          //     onPressed: () {},
          //   ),
          // ],
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        //to give padding for the entire body, press ctl +.From the specified options choose wrap with padding
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //verticalDirection: VerticalDirection.up:to make upside down
            //crossAxisAlignment: CrossAxisAlignment.stretch: to maximise all the coloumns,
            children: [
              Container(
                //padding without symmetry: padding: EdgeInsets.all(10),
                //padding with symmetry: padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                //padding 'only' option: EdgeInsets.only(left: 30, right: 10),
                padding:
                    EdgeInsets.only(left: 10, right: 20, top: 40, bottom: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.teal),
                //if there is no child,container will takeup the whole place under AppBar
                child: Text('container'),
              ),
              Container(
                //height: 100,
                //to make width of just one column maximised :width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.teal),
                child: Center(child: Text('container')),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 20, top: 40, bottom: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.teal),
                child: Text('container'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
