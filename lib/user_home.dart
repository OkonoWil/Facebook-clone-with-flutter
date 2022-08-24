import 'package:flutter/material.dart';
import 'package:facebook_clone/facebook_card.dart';

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
              height: 70.0,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profils/pp1.jpg'),
                      ),
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
              height: 270,
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
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/stories/storie${i % 5 + 1}.jpg"),
                                      ),
                                      color: Colors.primaries[2 * i],
                                      borderRadius: BorderRadius.circular(15)),
                                  height: MediaQuery.of(context).size.height,
                                  width: 114,
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
                                              backgroundImage: AssetImage(
                                                  "assets/images/profils/pp${i % 3 + 1}.jpg"),
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
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/stories/reel${i % 5 + 1}.jpg"),
                                      ),
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
                                              backgroundImage: AssetImage(
                                                  "assets/images/profils/pp${i % 3 + 1}.jpg"),
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
