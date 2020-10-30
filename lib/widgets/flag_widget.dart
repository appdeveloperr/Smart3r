import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  final String imagePath;

  Flag(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
              ),
              child: Image.asset(
                imagePath,
                height: 45,
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: 1,
          ),
        ],
      ),
    );
  }
}
