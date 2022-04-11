import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';

class StyledButton extends StatelessWidget {

  const StyledButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 100,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.green),
      child: Center(
          child: bold16Text('save', color: Colors.white)
      ),
    );
  }
}
