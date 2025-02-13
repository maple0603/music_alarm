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
                  SizedBox(height: 40),
                  Container(
                    height: 50.0,
                    width: 380.0,
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 25,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ログイン',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'パスワード忘れた方はこちら',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '会員登録がまだの方はこちら',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Future<void> _showPassWordResetDialog(BuildContext context) async {
      TextEditingController emailController = TextEditingController();

      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              insetPadding: const EdgeInsets.all(8),
              title: const Center(
                child: Text(
                  'パスワードリセット',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          });
    }
  }
}
