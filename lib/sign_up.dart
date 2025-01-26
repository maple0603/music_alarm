import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    text: 'メールアドレスで登録',
                  ),
                  SizedBox(height: 20),
                  _buildButton(
                    icon: Icons.mail_outline,
                    text: 'Googleで会員登録',
                  ),
                  SizedBox(height: 20),
                  _buildButton(
                    icon: Icons.mail_outline,
                    text: 'Appleで会員登録',
                  ),
                  SizedBox(height: 20),
                  _buildButton(
                    icon: Icons.mail_outline,
                    text: 'ゲストで利用',
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'ログインはこちら',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
