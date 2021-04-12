import 'package:examples/screens/login_screen.dart';
import 'package:examples/screens/registration_screen.dart';
import 'package:examples/screens/reorderable_list.dart';
import 'package:examples/screens/dismissable_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examples'),
      ),
      body: ListView(
        children: [
          CustomizedCard(
            title: 'Reorderable List',
            onTap: () {
              Navigator.pushNamed(context, ReorderableListExample.id);
            },
          ),
          CustomizedCard(
            title: 'Login Screen',
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          CustomizedCard(
            title: 'Registration Screen',
            onTap: () {
              Navigator.pushNamed(context, RegistrationScreen.id);
            },
          ),
          CustomizedCard(
            title: 'Dismissible Widget Screen',
            onTap: () {
              Navigator.pushNamed(context, DismissibleWidgetScreen.id);
            },
          ),
        ],
      ),
    );
  }
}

class CustomizedCard extends StatelessWidget {
  final Function onTap;
  final String title;
  CustomizedCard({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xFFf2f4fb),
        elevation: 10,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: onTap,
          child: SizedBox(
            width: 200,
            height: 100,
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                '$title',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
