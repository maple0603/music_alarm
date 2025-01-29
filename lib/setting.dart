import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          '設定',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('個人情報'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.account_circle),
                title: Text('プロフィール'),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            title: Text('一般'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('言語設定'),
                value: Text('日本語'),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            title: Text('このアプリについて'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.circle_notifications_outlined),
                title: Text('お知らせ'),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.privacy_tip_outlined),
                title: Text('プライバシーポリシー'),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.book_outlined),
                title: Text('利用規約'),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.help_outline),
                title: Text('ヘルプセンター'),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.info_outline_rounded),
                title: Text('このアプリについて'),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text(
                  'サインアウト',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: Icon(
                  Icons.waving_hand,
                  color: Colors.red,
                ),
                title: Text(
                  'アカウント削除',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: (context) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
