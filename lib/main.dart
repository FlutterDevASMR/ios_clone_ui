import 'package:flutter/cupertino.dart';
import 'package:ios_clone_ui/screens/lock_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: LockScreen(),
    );
  }
}
