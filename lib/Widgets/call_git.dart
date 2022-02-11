import 'package:flutter/material.dart';
import 'package:projeto9/models/abrir_Github.dart';

class CallGit extends StatelessWidget {
  const CallGit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: abrirGit,
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
                Icons.link_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
            Text(
              'https://github.com/DevGomes78',
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
