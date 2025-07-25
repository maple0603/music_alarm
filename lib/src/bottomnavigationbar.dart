// import 'package:flutter/material.dart';
//
// class MainScreen extends StatefulWidget {
//   final int initalIndex;
//
//   const MainScreen({Key? key, this.initalIndex = 0}) : super(key: key);
//
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;
//   late PageController _pageController = PageController();
//   String _userLanguage = 'English';
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedIndex = widget.initalIndex;
//     _pageController = PageController(initialPage: widget.initalIndex);
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//           body: PageView(
//             controller: _pageController,
//             physics: const NeverScrollableScrollPhysics(),
//             onPageChanged: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             children: [
//               _userLanguage == 'Japanese'
//                   ? AnimeListTestRanking()
//                   : AnimeListTestRankingEng(),
//               _userLanguage == 'Japanese'
//                   ?
//               RankingTopPage()
//               // _buildShopScreen()
//                   : RankingTopPageEn(),
//               _userLanguage == 'Japanese'
//                   ? MapScreen()
//                   : MapEnScreen(),
//               _userLanguage == 'Japanese'
//                   ? (!_hasSeenWelcome
//                   ? PostWelcome1(showScaffold: false)
//                   : TimelineScreen())
//                   : (!_hasSeenWelcome
//                   ? PostWelcome1(showScaffold: false)
//                   : TimelineScreen()),
//               _userLanguage == 'Japanese'
//                   ? UserPointUpdatePage()
//                   : UserPointUpdatePage(),
//             ],
//           ),
//           bottomNavigationBar: CustomBottomNavigationBar(
//             currentIndex: _selectedIndex,
//             onTap: _onItemTapped,
//             language: _userLanguage,
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
// }
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final void Function(int) onTap;
//   final String language;
//
//   const CustomBottomNavigationBar({
//     Key? key,
//     required this.currentIndex,
//     required this.onTap,
//     required this.language,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.white,
//       type: BottomNavigationBarType.fixed,
//       selectedItemColor: Colors.black,
//       selectedLabelStyle: const TextStyle(
//         fontSize: 10,
//         color: Colors.black,
//       ),
//       unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 10),
//       unselectedItemColor: Colors.grey,
//       currentIndex: currentIndex,
//       onTap: onTap,
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.place),
//           label: language == 'Japanese' ? 'スポット' : 'Spot',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.movie_creation_outlined),
//           label: language == 'Japanese' ? 'ジャンル' : 'Genre',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.map),
//           label: language == 'Japanese' ? '地図' : 'Map',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.chat_outlined),
//           label: language == 'Japanese' ? 'コミュニティ' : 'Community',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.score_outlined),
//           label: language == 'Japanese' ? 'ランキング' : 'Ranking',
//         ),
//       ],
//     );
//   }
// }
