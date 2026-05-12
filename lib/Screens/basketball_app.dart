import 'package:counter_app/Cubit/counter_cubit.dart';
import 'package:counter_app/Cubit/counter_state.dart'; // استيراد الـ State
import 'package:counter_app/widgets/team_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/custom_button.dart';

class Basketball extends StatelessWidget {
  const Basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xffFFA500),
            title: const Text('BasketBall Counter', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffffffff),
            ),),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
          ),
          body: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TeamColumn(
                        teamName: 'Team A',
                        points: state.counterA,
                        team: Team.teamA,
                        onAdd: (amount) {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(Team.teamA, amount);
                        },
                      ),
                      const SizedBox(
                        height: 450,
                        child: VerticalDivider(thickness: 2),
                      ),
                      TeamColumn(
                        teamName: 'Team B',
                        points: state.counterB,
                        team: Team.teamB,
                        onAdd: (amount) {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(Team.teamB, amount);
                        },
                      ),
                    ],
                  ),
                  CustomButton(
                    buttonText: 'Reset Counter',
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).resetAll();
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}