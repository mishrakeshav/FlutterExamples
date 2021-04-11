import 'package:examples/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  static String id = 'RegistrationScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: Container(
                height: 300.0,
                child: Image.asset('assets/images/login.png'),
              ),
            ),
            Text(
              'Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 20.0,
              ),
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
