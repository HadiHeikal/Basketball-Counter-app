import 'package:flutter/material.dart';

import 'custom_buttom.dart';

class TeamColumn extends StatelessWidget {
  final String teamName;
  final int points;
  final VoidCallback onAdd01;
  final VoidCallback onAdd02;
  final VoidCallback onAdd03;
  const TeamColumn({super.key, required this.teamName, required this.points, required this.onAdd01, required this.onAdd02, required this.onAdd03});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(teamName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Text('$points',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 160),),
        CustomButtom(buttonText: 'add one point', onPressed: onAdd01,),
        SizedBox(height: 30,),
        CustomButtom(buttonText: 'add two point', onPressed: onAdd02,),
        SizedBox(height: 30,),
        CustomButtom(buttonText: 'add three point', onPressed: onAdd03,),
        SizedBox(height: 30,),
      ],
    );
  }
}
