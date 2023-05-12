import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final String imageLocation;
  const MenuButton({super.key, required this.label, required this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 60,
      child: Column(
        children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(imageLocation,),
              )),
          SizedBox(
              width: 50,
              child: Text(
                label,
                style: const TextStyle(color: Colors.black, fontSize: 11),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
