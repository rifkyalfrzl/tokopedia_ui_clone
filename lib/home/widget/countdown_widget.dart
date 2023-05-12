import 'dart:async';

import 'package:flutter/material.dart';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({super.key});

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  Duration endTimer = const Duration(hours: 1);
  Timer? timer;

  @override
  void initState(){
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        endTimer -= const Duration(seconds: 1);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text("${_doubleDigitParser(endTimer.inHours)} : ${_doubleDigitParser(endTimer.inMinutes % 60)} : ${_doubleDigitParser(endTimer.inSeconds % 60)}", style: const TextStyle(fontSize: 13,color: Colors.white, fontWeight: FontWeight.bold),);
  }
  
  String _doubleDigitParser(int digit) {
    if (digit < 10) {
      return "0$digit";
    } else {
      return "$digit";
    }
  }
}