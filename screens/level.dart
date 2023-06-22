import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  const Level({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          Text(
            'Level page',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white70,
            child: Icon(
              Icons.bar_chart,
              color: Colors.teal,
              size: 120,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Level checking content for Bins',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
