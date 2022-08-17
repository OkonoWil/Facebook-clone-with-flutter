import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
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
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.add_outlined),
                  color: Colors.grey,
                  onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.search_rounded),
                  color: Colors.grey,
                  onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.message_sharp),
                  color: Colors.grey,
                  onPressed: () {})
            ],
            bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(icon: Icon(Icons.live_tv_rounded)),
                Tab(icon: Icon(Icons.store_outlined)),
                Tab(icon: Icon(Icons.notifications_none_rounded)),
                Tab(icon: Icon(Icons.menu))
              ],
            )),
        body: TabBarView(controller: _tabController, children: const <Widget>[
          Center(
              child: Text(
            'Bienvenue sur mon clône de Facebook',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )),
          Center(
              child: Text(
            'Watch',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )),
          Center(
              child: Text(
            'Marketplace',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )),
          Center(
              child: Text(
            'Notification',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )),
          Center(
              child: Text(
            'Menu',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )),
        ]));
  }
}
