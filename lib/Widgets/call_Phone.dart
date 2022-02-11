import 'package:flutter/material.dart';
import 'package:projeto9/models/call.dart';

class  CallWidgetPhone extends StatelessWidget {
  const  CallWidgetPhone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fazerLigacao,
      child: Container(
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
                Icons.phone,
                color: Colors.black,
                size: 30,
              ),
            ),
            Text(
              '(11)982155598',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}