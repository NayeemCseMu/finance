import 'package:finance/presentations/utils/app_constants.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../history/history_screen.dart';
import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // final _homeController = MainController();
  late List<Widget> screenList;
  late PersistentTabController persistentTabController;
  bool _hideNavBar = false;
  List<PersistentBottomNavBarItem> navBarsItems() => [
        PersistentBottomNavBarItem(
            icon: SvgPicture.asset(KAssetsPath.home, color: kPrimaryColor),
            inactiveIcon: SvgPicture.asset(KAssetsPath.home),
            title: "Home",
            textStyle: TextStyle(fontWeight: FontWeight.w500),
            activeColorPrimary: kPrimaryColor,
            inactiveColorPrimary: Colors.tealAccent,
            inactiveColorSecondary: navItemBg),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(KAssetsPath.list, color: kPrimaryColor),
          inactiveIcon: SvgPicture.asset(KAssetsPath.list),
          title: "History",
          textStyle: TextStyle(fontWeight: FontWeight.w500),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.teal,
        ),
        PersistentBottomNavBarItem(
            icon: SvgPicture.asset(KAssetsPath.bell, color: kPrimaryColor),
            inactiveIcon: SvgPicture.asset(KAssetsPath.bell),
            title: "Home",
            textStyle: TextStyle(fontWeight: FontWeight.w500),
            activeColorPrimary: kPrimaryColor,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple),
        PersistentBottomNavBarItem(
            icon: SvgPicture.asset(KAssetsPath.user, color: kPrimaryColor),
            inactiveIcon: SvgPicture.asset(KAssetsPath.user),
            title: "User",
            textStyle: TextStyle(fontWeight: FontWeight.w500),
            activeColorPrimary: kPrimaryColor,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple),
      ];

  @override
  void initState() {
    super.initState();
    persistentTabController = PersistentTabController();
    screenList = [
      const HomeScreen(),
      const HistoryPage(),
      const SizedBox(
        child: Text("Notification"),
      ),
      const SizedBox(
        child: Text("User"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: persistentTabController,
        screens: screenList,
        items: navBarsItems(),
        resizeToAvoidBottomInset: true,
      
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        
        bottomScreenMargin: 0,
        // onWillPop: (final c) async {
        //   await showDialog(
        //     context: context,
        //     useSafeArea: true,
        //     builder: (final context) => Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.white,
        //       child: ElevatedButton(
        //         child: const Text("Close"),
        //         onPressed: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ),
        //   );
        //   return false;
        // },
        selectedTabScreenContext: (final context) {
          // testContext = context;
        },
        backgroundColor: Colors.white,
        hideNavigationBar: _hideNavBar,
        decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),

        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
        ),
        navBarStyle:
            NavBarStyle.style1, // Choose the nav bar style with this property
      ),
    );
  }
}
