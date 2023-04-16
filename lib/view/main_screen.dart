import 'package:bybit_clone/constant/colors.dart';
import 'package:bybit_clone/view/main_screen_tabs/assets_screen.dart';
import 'package:bybit_clone/view/main_screen_tabs/derivatives_screen.dart';
import 'package:bybit_clone/view/main_screen_tabs/home_screen.dart';
import 'package:bybit_clone/view/main_screen_tabs/market_screen.dart';
import 'package:bybit_clone/view/main_screen_tabs/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;

  final screens = [
    const HomeScreen(),
    const MarketScreen(),
    const DerivativesScreen(),
    const TradeScreen(),
    const AssetsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: bottomNav,
          selectedItemColor: yellow,
          unselectedItemColor: Colors.white60,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(
                        'assets/icons/home.svg',
                        color: activeIndex == 0 ? yellow : Colors.white,
                      )),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: activeIndex == 1
                          ? Image.asset('assets/icons/markets1.png')
                          : Image.asset('assets/icons/markets.png')),
                ),
                label: 'Markets'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(
                        'assets/icons/derivatives.svg',
                        color: activeIndex == 2 ? yellow : Colors.white,
                      )),
                ),
                label: 'Derivatives'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: activeIndex == 3
                          ? Image.asset('assets/icons/trade1.png')
                          : Image.asset('assets/icons/trade.png')),
                ),
                label: 'Trade'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(
                        'assets/icons/assets.svg',
                        color: activeIndex == 4 ? yellow : Colors.white,
                      )),
                ),
                label: 'Assets'),
          ]),
      body: screens[activeIndex],
    );
  }
}
