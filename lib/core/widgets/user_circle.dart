import 'package:flutter/material.dart';

class UserCircle extends StatelessWidget {
  final String label;
  const UserCircle({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person,
            color: const Color.fromARGB(255, 146, 111, 111),
          ),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
