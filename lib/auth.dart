import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  static String id = 'auth';
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auth')),
      body: Container(
        child: Column(
          children: [
            Text(
              'Authentication',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email'
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (String email){
                if (email == null || email.isEmpty) {
                  return "please enter your email";
                }
                else {
                  return null;
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password'
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              validator: (String password) {
                if (password == null || password.isEmpty) {
                  return "Please enter your password";
                }

                else {
                  return null;
                }
              },
            ),
            Row(
              children: [
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text,));
                  },
                ),
                ElevatedButton(
                  child: Text('Register'),
                  onPressed: () {

                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
