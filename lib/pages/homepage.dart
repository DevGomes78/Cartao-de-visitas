import 'package:flutter/material.dart';
import 'package:projeto9/Widgets/app_text.dart';
import 'package:projeto9/Widgets/container.dart';
import 'package:projeto9/models/call_github.dart';
import 'package:projeto9/models/call.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContainer(),
    );
  }

  buildContainer() {
    return Container(
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
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Divider(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: fazerLigacao,
                child: ContainerWidget(
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Icon(
                          Icons.phone,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('(11)982155598',
                          style: AppTextStyle.Textblack18),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ContainerWidget(
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text('gomes.amilson@gmail.com',
                        style: AppTextStyle.Textblack18),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: callGithub,
                child: ContainerWidget(
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Icon(
                          Icons.link,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text('https://github.com/DevGomes78',
                          style: AppTextStyle.Textblack18),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
