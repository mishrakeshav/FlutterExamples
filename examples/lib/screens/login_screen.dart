import 'package:examples/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Container(
                height: 300.0,
                child: Image.asset('assets/images/login.png'),
              ),
            ),
            Text(
              'Login',
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
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
