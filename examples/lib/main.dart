import 'package:examples/screens/login_screen.dart';
import 'package:examples/screens/registration_screen.dart';
import 'package:examples/screens/dismissable_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: DismissibleWidgetScreen.id,
      routes: {
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
        DismissibleWidgetScreen.id: (BuildContext context) =>
            DismissibleWidgetScreen(),
      },
    );
  }
}
