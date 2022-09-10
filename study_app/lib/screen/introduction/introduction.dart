import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:study_app/widgets/app_circle_button.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          const Icon(
            Icons.star,
            size: 65,
            color: Colors.amber,
          ),
          const Text(
              'This is a study app . You can use it as you want . if you understand how this works,you would be able to scale it '),
          AppCircleButton()
        ]),
      ),
    );
  }
}
