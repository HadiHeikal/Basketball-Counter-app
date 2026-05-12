import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText ;
  final VoidCallback onPressed;
  const CustomButton({super.key,  required this.buttonText,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        minimumSize: Size(170, 50),
      ),
      child: Text(buttonText,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
    );
  }
}
