import 'package:flutter/material.dart';
import 'package:facebook_clone/user_home.dart';
import 'package:facebook_clone/user_notification.dart';
import 'package:facebook_clone/user_market_place.dart';
import 'package:facebook_clone/user_watch.dart';
import 'package:facebook_clone/menu2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'facebook',
              style: TextStyle(
                  color: Color.fromARGB(255, 30, 127, 206),
                  fontSize: 35,
                  fontWeight: FontWeight.w700),
            ),
            elevation: 1,
            actions: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: 40,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(.08),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(Icons.add_outlined),
                    color: const Color.fromARGB(255, 36, 35, 35),
                    onPressed: () {}),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: 40,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(.08),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(Icons.search_outlined),
                    color: const Color.fromARGB(255, 36, 35, 35),
                    onPressed: () {}),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: 40,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(.08),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(Icons.message_sharp),
                    color: const Color.fromARGB(255, 36, 35, 35),
                    onPressed: () {}),
              )
            ],
            bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(icon: Icon(Icons.store_mall_directory_outlined)),
                Tab(icon: Icon(Icons.live_tv_rounded)),
                Tab(icon: Icon(Icons.notifications_none_outlined)),
                Tab(icon: Icon(Icons.menu_outlined))
              ],
            )),
        body: TabBarView(controller: _tabController, children: const <Widget>[
          UserHome(),
          UserMarketPlace(),
          UserWatch(),
          UserNotification(),
          UserMenu()
        ]));
  }
}
