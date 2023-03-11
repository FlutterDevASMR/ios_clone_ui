import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_clone_ui/screens/home_screen.dart';
import 'package:ios_clone_ui/utils/constants.dart';
import 'package:slide_to_act/slide_to_act.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Icon(
                    CupertinoIcons.lock_fill,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '12:45',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 65,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sunday, 12 March',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SlideAction(
                outerColor: Constants.buttonColor,
                innerColor: Colors.grey.shade900,
                elevation: 0,
                borderRadius: 15,
                sliderButtonIcon: const Icon(
                  CupertinoIcons.lock_fill,
                  color: Colors.white,
                ),
                sliderRotate: false,
                text: 'SLIDE TO UNLOCK',
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                onSubmit: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
