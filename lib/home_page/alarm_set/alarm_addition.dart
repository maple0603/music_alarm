import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_alarm/home_page/alarm_set/repetition%20_page.dart';
import 'package:music_alarm/home_page/alarm_set/time_setting.dart';
import 'package:settings_ui/settings_ui.dart';

class AlarmAdditionScreen extends StatefulWidget {
  const AlarmAdditionScreen({super.key});

  @override
  State<AlarmAdditionScreen> createState() => _AlarmAdditionScreenState();
}

class _AlarmAdditionScreenState extends State<AlarmAdditionScreen> {
  final _fromKey = GlobalKey<FormState>();
  bool sunChk = false;
  bool monChk = false;
  bool tueChk = false;
  bool wedChk = false;
  bool thuChk = false;
  bool friChk = false;
  bool satChk = false;
  bool snoozeChk = false;
  String sound = 'default';
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('アラームの追加・編集'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeSettingScreen()),
              );
            },
            child: const Text(
              '保存',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          drumroll(),
          Expanded(child: custom()), // SettingsList を表示するために Expanded を追加
        ],
      ),
    );
  }

  /// 時間選択 (CupertinoDatePicker)
  Widget drumroll() {
    return Form(
      key: _fromKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: CupertinoDatePicker(
            initialDateTime: dateTime,
            mode: CupertinoDatePickerMode.time,
            use24hFormat: true,
            onDateTimeChanged: (DateTime newTime) {
              setState(() => dateTime = newTime);
            },
          ),
        ),
      ),
    );
  }

  /// 設定リスト (SettingsList)
  Widget custom() {
    return SettingsList(
      sections: [
        SettingsSection(
          title: const Text('追加設定'),
          tiles: [
            SettingsTile.navigation(
              leading: const Icon(Icons.repeat),
              title: const Text('繰り返し'),
              onPressed: (context) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RepetitionScreen(),
                  ),
                );
              },
            ),
            SettingsTile.switchTile(
              leading: const Icon(Icons.snooze),
              title: const Text('スヌーズ'),
              initialValue: snoozeChk,
              onToggle: (bool value) {
                setState(() => snoozeChk = value);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _additiontimez() {
    bool switching = false;

    return SettingsSection(
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
    );
  }
}
