import 'package:flutter/material.dart';
import 'package:music_alarm/home_page/alarm_set/alarm_addition.dart';
import 'package:settings_ui/settings_ui.dart';

class TimeSettingScreen extends StatefulWidget {
  const TimeSettingScreen({super.key});

  @override
  State<TimeSettingScreen> createState() => _TimeSettingScreenState();
}

class _TimeSettingScreenState extends State<TimeSettingScreen> {
  bool switching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('アラーム'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('addition'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.add),
                title: Text('選択した時間'),
                onPressed: (context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlarmAdditionScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: (bool value) {
                  setState(() => switching = value);
                },
                initialValue: switching,
                leading: Icon(Icons.alarm),
                title: Text('時間を表示'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
