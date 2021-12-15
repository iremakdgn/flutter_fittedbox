import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FittedBoxPage extends StatefulWidget {
  const FittedBoxPage({Key? key}) : super(key: key);

  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FittedBox Layout Widget Demo"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    // ignore: prefer_const_constructors
                    child: Text(
                      "FittedBox",
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 200,
                    child: Image.asset("assets/screen2.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
