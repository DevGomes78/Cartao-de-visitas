import 'package:flutter/material.dart';

class callEmail extends StatelessWidget {
  const callEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              Icons.alternate_email,
              color: Colors.black,
              size: 30,
            ),
          ),
          Text(
            'gomes.amilson@gmail.com',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}