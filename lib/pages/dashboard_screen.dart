import 'package:design/constants/app_colors.dart';
import 'package:design/pages/home_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>with TickerProviderStateMixin {
  int selectedPage = 0;
  TabController? tabController;
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),const HomeScreen(),const HomeScreen(),const HomeScreen(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, animationDuration: const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        maintainBottomViewPadding: true,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _children[_currentIndex],
            Positioned(
                bottom: 7,
                child: Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.89,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          commonWidget(0,Icons.home_filled),
                          commonWidget(1,Icons.menu_book),
                          commonWidget(2,Icons.add_chart),
                          commonWidget(3, Icons.person),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }

  Widget commonWidget(int index,IconData icon) {
    return GestureDetector(
      onTap: () {
        onTabTapped(index);
      },
      child: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              _currentIndex != index?
              Container(
                  padding: const EdgeInsets.all(15),
                  child:  Icon(icon,color: Colors.white)
              ):
              Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(icon,color: primaryColor)
                  )
              ),
            ],
          )),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}