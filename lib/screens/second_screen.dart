import 'package:flutter/material.dart';
// import 'package:simplilearn/screens/home_screen.dart';

class SecondScreen extends StatelessWidget {
  final String descriptionText;
  final String rateText;
  const SecondScreen({super.key, required this.descriptionText, required this.rateText});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(descriptionText, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Align(alignment: Alignment.bottomRight, child: Text("- $rateText", style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700
              ),)),
            ),
          ],
        ),
      ),
    );
  }
}
