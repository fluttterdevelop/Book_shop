import 'package:bookshop/constant/colors.dart';
import 'package:bookshop/view/all_photos/all_photos.dart';
import 'package:bookshop/view/exit/exit.dart';
import 'package:bookshop/view/home/end_drawer/continue_section/privacy.dart';
import 'package:bookshop/view/home/end_drawer/continue_section/setting.dart';
import 'package:bookshop/view/home/end_drawer/continue_section/terms.dart';
import 'package:bookshop/view/home/end_drawer/main_section/careers.dart';
import 'package:bookshop/view/home/end_drawer/main_section/news_letter.dart';
import 'package:bookshop/view/home/end_drawer/main_section/our_stores.dart';
import 'package:bookshop/view/home/end_drawer/main_section/pop_up_leasing.dart';
import 'package:bookshop/view/home/end_drawer/main_section/sell_with_us.dart';
import 'package:flutter/material.dart';

import '../account/account_view.dart';
import '../home/home_view.dart';
import '../our_book/out_books_view.dart';
import '../search/search_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

GlobalKey<ScaffoldState> sideMenuScaffoldKey = GlobalKey<ScaffoldState>();

class _MainTabViewState extends State<MainTabView>
    with TickerProviderStateMixin {
  TabController? controller;

  int selectMenu = 0;

  List menuArr = [
    {"name": "Home", "icon": Icons.home},
    {"name": "Our Books", "icon": Icons.book},
    {"name": "Our Stores", "icon": Icons.storefront},
    {"name": "Careers", "icon": Icons.business_center},
    {"name": "Sell With Us", "icon": Icons.attach_money},
    {"name": "Newsletter", "icon": Icons.newspaper},
    {"name": "Pop-up Leasing", "icon": Icons.open_in_new},
    {"name": "Account", "icon": Icons.account_circle}
  ];

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      key: sideMenuScaffoldKey,
      endDrawer: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        width: media.width * 0.8,
        child: Container(
          decoration: BoxDecoration(
              color: TColor.dColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(media.width * 0.7),
              ),
              boxShadow: const [
                BoxShadow(color: Colors.black54, blurRadius: 15)
              ]),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    children: menuArr.map((mObj) {
                      var index = menuArr.indexOf(mObj);
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 15),
                        decoration: selectMenu == index
                            ? BoxDecoration(color: TColor.primary, boxShadow: [
                                BoxShadow(
                                    color: TColor.primary,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3))
                              ])
                            : null,
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Wishlist()));
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OurBooksView(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OurStores(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 3) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Careers(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 4) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SellWithUs(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Newsletter(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 6) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PopupLeasing(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            } else if (index == 7) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AccountView(),
                                ),
                              );
                              sideMenuScaffoldKey.currentState
                                  ?.closeEndDrawer();
                            }

                            setState(() {
                              selectMenu = index;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                mObj["name"].toString(),
                                style: TextStyle(
                                    color: selectMenu == index
                                        ? Colors.white
                                        : TColor.text,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Icon(
                                mObj["icon"] as IconData? ?? Icons.home,
                                color: selectMenu == index
                                    ? Colors.white
                                    : TColor.primary,
                                size: 33,
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList()),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SettingsScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.settings,
                            color: TColor.subTitle,
                            size: 25,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TermsScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Terms",
                          style: TextStyle(
                              color: TColor.subTitle,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PrivacyScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Privacy",
                          style: TextStyle(
                              color: TColor.subTitle,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(controller: controller, children: const [
        HomeView(),
        SearchView(),
        Wishlist(),
        AllPhotos(),
      ]),
      bottomNavigationBar: BottomAppBar(
        color: TColor.primary,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.search),
              text: "Search",
            ),
            Tab(
              icon: Icon(Icons.exit_to_app),
              text: "Exit",
            ),
            Tab(
              icon: Icon(Icons.picture_in_picture),
              text: "Photos",
            ),
          ],
        ),
      ),
    );
  }
}
