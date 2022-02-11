import 'package:flutter/material.dart';
import 'package:projeto9/Widgets/AppTextStyle.dart';
import 'package:projeto9/Widgets/call_email.dart';
import 'package:projeto9/Widgets/call_git.dart';
import 'package:projeto9/Widgets/call_Phone.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.redAccent, Colors.black])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 140),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/minhafoto (2).jpg'),
                    radius: 60,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Amilson Gomes',
                  style: AppTextStyle.MainText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Desenvolvedor Flutter',
                  style: AppTextStyle.SubMain,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90.0),
                  child: Divider(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                CallWidgetPhone(),
                SizedBox(height: 10),
                callEmail(),
                SizedBox(height: 10),
                CallGit(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
