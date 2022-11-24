import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DICE",
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  void changeDiceNumber (){

   setState(() {
     rightDiceNumber = Random().nextInt(6)+1;
     leftDiceNumber = Random().nextInt(6)+1;
   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Dice",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){

                          changeDiceNumber();

                      },
                        child: Image.asset("images/dice$leftDiceNumber.png"))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GestureDetector(
                      onTap:(){
                        changeDiceNumber();
                      } ,
                        child: Image.asset("images/dice$rightDiceNumber.png"))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
