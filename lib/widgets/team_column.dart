import 'package:counter_app/Cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';

class TeamColumn extends StatelessWidget {
  final String teamName;
  final int points;
  final Team team;
  final Function(int) onAdd;

  const TeamColumn({
    super.key,
    required this.teamName,
    required this.points,
    required this.team,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(teamName, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Text('$points', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 130),),

        CustomButton(buttonText: 'Add 1 Point', onPressed: () => onAdd(1),),
        const SizedBox(height: 20,),
        CustomButton(buttonText: 'Add 2 Points', onPressed: () => onAdd(2),),
        const SizedBox(height: 20,),
        CustomButton(buttonText: 'Add 3 Points', onPressed: () => onAdd(3),),
        const SizedBox(height: 20,),
      ],
    );
  }
}