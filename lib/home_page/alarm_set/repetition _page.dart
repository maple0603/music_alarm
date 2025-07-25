import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class RepetitionScreen extends StatefulWidget {
  const RepetitionScreen({super.key});

  @override
  State<RepetitionScreen> createState() => _RepetitionScreenState();
}

class _RepetitionScreenState extends State<RepetitionScreen> {
  Map<String, bool> _checkedDays = {
    '毎月曜日': false,
    '毎火曜日': false,
    '毎水曜日': false,
    '毎木曜日': false,
    '毎金曜日': false,
    '毎土曜日': false,
    '毎日曜日': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('繰り返し'),
        backgroundColor: Colors.white,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
              title: Text('addition'),
              tiles: _checkedDays.keys.map((day) {
                return SettingsTile.navigation(
                    title: Text(day),
                    onPressed: (context) {
                      setState(() {
                        _checkedDays[day] = !_checkedDays[day]!;
                      });
                      print('push');
                    },
                    trailing: _checkedDays[day]!
                        ? Icon(Icons.check, color: Colors.orange) // チェックを表示
                        : SizedBox.shrink());
              }).toList()),
        ],
      ),
    );
  }
}
