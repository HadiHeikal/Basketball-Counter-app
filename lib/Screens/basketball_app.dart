import 'package:counter_app/widgets/team_column.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_buttom.dart';
class Basketball extends StatefulWidget {
  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int team1_Points = 0;
  int team2_Points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffFFA500),
          title: Text('BasketBall Counter',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamColumn(
                  teamName: 'Team 01',
                  points: team1_Points,
                  onAdd01: () => setState(() => team1_Points += 1),
                  onAdd02: () => setState(() => team1_Points += 2),
                  onAdd03: () => setState(() => team1_Points += 3),
                ),
                SizedBox(
                  height: 570,
                  child: VerticalDivider(thickness: 2),
                ),
                TeamColumn(
                  teamName: 'Team 02',
                  points: team2_Points,
                  onAdd01: () => setState(() => team2_Points += 1),
                  onAdd02: () => setState(() => team2_Points += 2),
                  onAdd03: () => setState(() => team2_Points += 3),
                ),
              ],
            ),
            CustomButtom(buttonText: 'Reset Counter',onPressed: ()=>setState(() {
              team1_Points =0 ;
              team2_Points =0 ;
            }),),
          ],
        ),
    ),
    );
  }
}
