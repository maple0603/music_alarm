import 'package:flutter/material.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'プロフィール',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/IMG_0110.JPG'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: _buildStatisticBox(
                    '使用日数',
                    'value',
                    Color(0xFF4299E1),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: _buildStatisticBox(
                    'title',
                    'value',
                    Color(0xFF4299E1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                _buildProfileItem('名前', 'value'),
                _buildDivider(),
                _buildProfileItem('ID', 'value'),
                _buildDivider(),
                _buildProfileItem('Email', 'value'),
                _buildDivider(),
                _buildProfileItem('誕生日', 'value'),
                _buildDivider(),
                _buildProfileItem('登録日', 'value'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticBox(String title, String value, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF4A5568),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF4A5568),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2D3748),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      color: Colors.grey[200],
    );
  }
}
