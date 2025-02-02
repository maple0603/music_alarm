import 'package:flutter/material.dart';

class MailLoginScreen extends StatefulWidget {
  const MailLoginScreen({super.key});

  @override
  State<MailLoginScreen> createState() => _MailLoginScreenState();
}

class _MailLoginScreenState extends State<MailLoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'メールアドレスでログイン',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
              child: Column(
                children: [
                  Text(
                    'WakeUp',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF8F8FF),
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        prefixIcon: const Icon(Icons.email),
                        labelText: 'メールアドレスを入力', // ここでラベルを指定
                        labelStyle: TextStyle(
                          fontSize: 14.0, // ラベルが小さくなる
                        ),
                        // ボーダーを背景色と同じ色にして、ボーダー自体を透明にする
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide:
                              BorderSide(color: Color(0xFFF8F8FF), width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide:
                              BorderSide(color: Color(0xFFF8F8FF), width: 1),
                        ),
                        fillColor: Color(0xFFF8F8FF),
                        filled: true,
                        floatingLabelBehavior:
                            FloatingLabelBehavior.auto, // フォーカス時にラベルが上に移動
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      onChanged: (value) {},
                      onSubmitted: (value) {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                _isObscure = !_isObscure;
                              },
                            );
                          },
                          icon: Icon(_isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF8F8FF),
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        prefixIcon: Icon(Icons.https),
                        labelText: 'パスワードを入力',
                        labelStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            color: Color(0xFFF8F8FF),
                            width: 0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF8F8FF),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        fillColor: Color(0xFFF8F8FF),
                        filled: true,
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
}
