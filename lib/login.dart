import 'package:flutter/material.dart';
import 'package:music_alarm/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
              child: Column(
                children: [
                  Text(
                    'WakeUp',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 100),
                  _buildButton(
                    icon: Icons.mail_outline,
                    text: 'メールアドレスでログイン',
                  ),
                  SizedBox(height: 20),
                  _buildButton(
                    icon: Icons.mail_outline,
                    text: 'Googleでログイン',
                  ),
                  SizedBox(height: 20),
                  _buildButton(
                    icon: Icons.mail_outline,
                    text: 'Appleでログイン',
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      '登録がまだの方はこちら',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButton({required IconData icon, required String text}) {
    return SizedBox(
      height: 50,
      width: 370,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                child: Icon(icon),
                left: 40,
                top: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
