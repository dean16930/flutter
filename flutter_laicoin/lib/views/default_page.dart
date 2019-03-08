import 'package:flutter/material.dart';
import './pages/home/index.dart' as HomePage;
import './pages/trading/index.dart' as TradingPage;
import './pages/assets/index.dart' as AssetsPage;
import './pages/user/index.dart' as UserPage;

class DefaultPage extends StatefulWidget {
  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  int currentTabPageIndex = 0;
  var currentTabPage;

  final List<BottomNavigationBarItem> bottomTabItems = [
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/icons/bottom_tab_home.png',
            width: 22.0, height: 22.0),
        activeIcon: Image.asset(
            'assets/images/icons/bottom_tab_home_actived.png',
            width: 22.0,
            height: 22.0),
        title: Text('行情')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/icons/bottom_tab_trading.png',
            width: 22.0, height: 22.0),
        activeIcon: Image.asset(
            'assets/images/icons/bottom_tab_trading_actived.png',
            width: 22.0,
            height: 22.0),
        title: Text('交易')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/icons/bottom_tab_assets.png',
            width: 22.0, height: 22.0),
        activeIcon: Image.asset(
            'assets/images/icons/bottom_tab_assets_actived.png',
            width: 22.0,
            height: 22.0),
        title: Text('资产')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/icons/bottom_tab_user.png',
            width: 22.0, height: 22.0),
        activeIcon: Image.asset(
            'assets/images/icons/bottom_tab_user_actived.png',
            width: 22.0,
            height: 22.0),
        title: Text('我的')),
  ];
  final List bottomTabPages = [
    HomePage.IndexPage(),
    TradingPage.IndexPage(),
    AssetsPage.IndexPage(),
    UserPage.IndexPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomTabPages[currentTabPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 22.0,
        //fixedColor: Colors.indigo[400],
        currentIndex: currentTabPageIndex,
        items: bottomTabItems,
        onTap: (index) {
          setState(() {
            currentTabPageIndex = index;
            currentTabPage = bottomTabPages[currentTabPageIndex];
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void initState() {
    super.initState();
    currentTabPage = bottomTabPages[currentTabPageIndex];
  }
}
