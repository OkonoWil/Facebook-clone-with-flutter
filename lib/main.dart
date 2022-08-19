import 'package:flutter/material.dart';

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

//
//
// UserHome
//
//
class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.4),

      //Pour avoir la taille en fonction des dimension de l'écran
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .1,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(),
                      Expanded(
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 0.0, left: 4),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 10,
                                    ),
                                    hintText: "Quoi de neuf ?",
                                    hintStyle: const TextStyle(
                                        color: Color.fromARGB(255, 83, 83, 83)),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(50))),
                              ))),
                      const Icon(
                        Icons.photo,
                        color: Colors.green,
                      )
                    ]),
              ),
            ),
            const Divider(
              thickness: .01,
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .32,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const TabBar(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        tabs: <Widget>[
                          Tab(
                            child: Text('Stories'),
                          ),
                          Tab(
                            text: 'Reels',
                          ),
                        ],
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TabBarView(children: [
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (int i = 0; i < 8; i++)
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.primaries[2 * i],
                                      borderRadius: BorderRadius.circular(15)),
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width / 3.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors
                                                  .primaries.reversed
                                                  .elementAt(i),
                                            )
                                          ],
                                        ),
                                        const Text(
                                          'Mr Wil',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ],
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (int i = 0; i < 8; i++)
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.primaries[17 - 2 * i],
                                      borderRadius: BorderRadius.circular(15)),
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width / 3.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors
                                                  .primaries.reversed
                                                  .elementAt(17 - 2 * i),
                                            )
                                          ],
                                        ),
                                        const Text(
                                          'Mr Wil',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ],
                          )
                        ]),
                      )),
                    ],
                  )),
            ),
            const Divider(
              thickness: .01,
              height: 10,
            ),
            const FacebookCard(),
            const Divider(
              thickness: .01,
              height: 10,
            ),
            const FacebookCard(),
            const Divider(
              thickness: .01,
              height: 10,
            ),
            const FacebookCard(),
          ],
        ),
      ),
    );
  }
}

//
//
// UserMarketPlace
//
//
class UserMarketPlace extends StatefulWidget {
  const UserMarketPlace({Key? key}) : super(key: key);

  @override
  State<UserMarketPlace> createState() => _UserMarketPlaceState();
}

class _UserMarketPlaceState extends State<UserMarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.4),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Marketplace',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 83, 83, 83),
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.search_sharp,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(15)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 4),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.note_alt_outlined),
                                      Text('Vendre')
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(15)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 4),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.list_rounded),
                                      Text('Catégories')
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))),
              Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.blue,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

//
//
// UserWatch
//
//
class UserWatch extends StatefulWidget {
  const UserWatch({Key? key}) : super(key: key);

  @override
  State<UserWatch> createState() => _UserWatchState();
}

class _UserWatchState extends State<UserWatch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.4),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Watch',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 83, 83, 83),
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.search_sharp,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: const [
                                // Container(
                                //   decoration: BoxDecoration(
                                //       color: Colors.blueGrey.withOpacity(.2),
                                //       borderRadius: BorderRadius.circular(15)),
                                //   padding: const EdgeInsets.symmetric(
                                //       horizontal: 40, vertical: 4),
                                //   margin:
                                //       const EdgeInsets.symmetric(horizontal: 8),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     children: const [
                                //       Icon(Icons.note_alt_outlined),
                                //       Text('Vendre')
                                //     ],
                                //   ),
                                // ),
                                // Container(
                                //   decoration: BoxDecoration(
                                //       color: Colors.blueGrey.withOpacity(.2),
                                //       borderRadius: BorderRadius.circular(15)),
                                //   padding: const EdgeInsets.symmetric(
                                //       horizontal: 40, vertical: 4),
                                //   margin:
                                //       const EdgeInsets.symmetric(horizontal: 8),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     children: const [
                                //       Icon(Icons.list_rounded),
                                //       Text('Catégories')
                                //     ],
                                //   ),
                                // )
                              ],
                            ),
                          )
                        ],
                      ))),
              Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.greenAccent,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

//
//
// UserNotification
//
//
class UserNotification extends StatefulWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  State<UserNotification> createState() => _UserNotificationState();
}

class _UserNotificationState extends State<UserNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.4),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Notification',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 83, 83, 83),
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.search_sharp,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: const [],
                            ),
                          )
                        ],
                      ))),
              Expanded(
                  flex: 12,
                  child: Container(
                    color: Colors.white,
                    child: NotificationView(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

//
//
// Menu
//
//
class UserMenu extends StatefulWidget {
  const UserMenu({Key? key}) : super(key: key);

  @override
  State<UserMenu> createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.4),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Menu',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 83, 83, 83),
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.settings,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 40,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.blueGrey.withOpacity(.2),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.search_sharp,
                                        color: Color.fromARGB(255, 22, 22, 22),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Okono Wilfried",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                  Text("Voir votre profil")
                                ],
                              )
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.redAccent,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class FacebookCard extends StatefulWidget {
  const FacebookCard({Key? key}) : super(key: key);

  @override
  State<FacebookCard> createState() => _FacebookCardState();
}

class _FacebookCardState extends State<FacebookCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              // image: const DecorationImage(
                              //     image: AssetImage("/assets/images/image1.jpg"),
                              //     fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mr Wil',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 83, 83, 83),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "1min",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 83, 83, 83),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.people,
                                      color: Color.fromARGB(255, 83, 83, 83),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Color.fromARGB(255, 83, 83, 83),
                      ),
                      Icon(
                        Icons.close_rounded,
                        color: Color.fromARGB(255, 83, 83, 83),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Text("Comment trouvez-vous ce programme?"),
            ),
          ]),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Flutter est cool...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(2),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.thumb_up_alt,
                                color: Color.fromARGB(255, 83, 83, 83),
                              ),
                              Icon(
                                Icons.facebook_rounded,
                                color: Color.fromARGB(255, 83, 83, 83),
                              ),
                              Text('2')
                            ],
                          ),
                          const Text(
                            "20 comments",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )),
                  const Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: const [
                          Icon(
                            Icons.thumb_up_alt,
                            color: Color.fromARGB(255, 83, 83, 83),
                          ),
                          Text("J'aime")
                        ]),
                        Row(children: const [
                          Icon(
                            Icons.messenger_outline_rounded,
                            color: Color.fromARGB(255, 83, 83, 83),
                          ),
                          Text('Commenter')
                        ]),
                        Row(children: const [
                          Icon(
                            Icons.share,
                            color: Color.fromARGB(255, 83, 83, 83),
                          ),
                          Text('Paratger')
                        ])
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

/////////////
/////////////
/////////////  NotificationView
/////////////
/////////////
class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Flutter a accepté votre invitation",
          ),
          subtitle: Text("Hier à 22:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Laravel a accepté votre invitation",
          ),
          subtitle: Text("Hier à 07:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "wil a publié dans One Piece Fandom Officiel jeudi:<<Si tu peux le dépouiller de son épée tu pourras...>>",
          ),
          subtitle: Text("Hier à 07:23"),
          isThreeLine: true,
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Java",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        Text(
                          " a accepté votre invitation",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      "Hier à 20:14",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Java",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        Text(
                          " a accepté votre invitation",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      "Hier à 20:14",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Java",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        Text(
                          " a accepté votre invitation",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      "Hier à 20:14",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Flutter a accepté votre invitation",
          ),
          subtitle: Text("Hier à 22:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Laravel a accepté votre invitation",
          ),
          subtitle: Text("Hier à 07:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Flutter a accepté votre invitation",
          ),
          subtitle: Text("Hier à 22:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Laravel a accepté votre invitation",
          ),
          subtitle: Text("Hier à 07:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "wil a publié dans One Piece Fandom Officiel jeudi:<<Si tu peux le dépouiller de son épée tu pourras...>>",
          ),
          subtitle: Text("Hier à 07:23"),
          isThreeLine: true,
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Java",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        Text(
                          " a accepté votre invitation",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      "Hier à 20:14",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Java",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        Text(
                          " a accepté votre invitation",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      "Hier à 20:14",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Java",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        Text(
                          " a accepté votre invitation",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      "Hier à 20:14",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Flutter a accepté votre invitation",
          ),
          subtitle: Text("Hier à 22:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
        const ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Laravel a accepté votre invitation",
          ),
          subtitle: Text("Hier à 07:23"),
          trailing: Icon(Icons.more_horiz_rounded),
        ),
      ],
    );
  }
}
