import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto9/models/call_github.dart';

class ContainerWidget extends StatelessWidget {
  String? text;
  Widget? child;

  ContainerWidget({
    Key? key,
    this.text,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
