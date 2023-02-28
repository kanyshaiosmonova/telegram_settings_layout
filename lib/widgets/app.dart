import 'package:flutter/material.dart';
import 'package:lesson_1/widgets/user_profile.dart';

class App extends StatelessWidget {
  // ignore: public_member_api_docs
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfile(),
    );
  }
}
