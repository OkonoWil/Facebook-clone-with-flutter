import 'package:facebook_clone/widgets/shortcut.dart';
import 'package:facebook_clone/widgets/small_shortcut.dart';
import 'package:flutter/material.dart';

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
      color: Colors.white,
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
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 209, 209, 209)
                            .withOpacity(0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 30.0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        margin:
                                            const EdgeInsets.only(right: 12.0),
                                        width: 30,
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.blueGrey.withOpacity(.2),
                                            shape: BoxShape.circle),
                                        child: const Icon(
                                          Icons.settings,
                                          size: 20,
                                          color:
                                              Color.fromARGB(255, 22, 22, 22),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 8.0),
                                        width: 30,
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.blueGrey.withOpacity(.2),
                                            shape: BoxShape.circle),
                                        child: const Icon(
                                          Icons.search_sharp,
                                          color:
                                              Color.fromARGB(255, 22, 22, 22),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 13,
                  child: Container(
                      color: Colors.white,
                      child: Container(
                        color:
                            Color.fromARGB(255, 209, 209, 209).withOpacity(0.4),

                        //Pour avoir la taille en fonction des dimension de l'écran
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(right: 15.0),
                                      child: const CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage: AssetImage(
                                            'assets/images/profils/pp1.jpg'),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                ),
                              ),
                              const Divider(
                                endIndent: 20.0,
                                indent: 20.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Vos Raccourcis'),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width,
                                height: 130.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article1.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article2.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article3.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article4.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article5.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article11.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article12.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article13.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article14.jpg",
                                      name: "Stores",
                                    ),
                                    SmallShortCutWidget(
                                      image:
                                          "assets/images/articles/article15.jpg",
                                      name: "Stores",
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Tous les raccourcis'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_bookmark.ico",
                                            name: 'Enregistrements'),
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_team.ico",
                                            name: 'Amis'),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_people.ico",
                                            name: 'Groupes'),
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_activity_feed.ico",
                                            name: 'Fils'),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_small_business.ico",
                                            name: 'Marketplace'),
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_TV_Show.ico",
                                            name: 'Vid"os sur Watch'),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_memories.ico",
                                            name: 'Souvenirs'),
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_Flag.ico",
                                            name: 'Pages'),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_instagram_reels.ico",
                                            name: 'Reels'),
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_event_accepted.ico",
                                            name: 'Evènements'),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_facebook_gaming.ico",
                                            name: 'Gaming'),
                                        ShortCutWidget(
                                            image:
                                                "assets/icons/icons8_literature.ico",
                                            name: 'Stories'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 25,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 15.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 199, 196, 196),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: const Text(
                                  'Voir plus',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const Divider(
                                height: 2,
                                thickness: 0.5,
                                color: Color.fromARGB(255, 121, 119, 119),
                              ),
                              const ListTile(
                                leading: Icon(
                                  Icons.handshake,
                                  color: Color.fromARGB(255, 139, 161, 151),
                                ),
                                title: Text('Ressources communautaires'),
                                trailing:
                                    Icon(Icons.keyboard_arrow_down_outlined),
                              ),
                              const Divider(
                                height: 2,
                                thickness: 0.5,
                                color: Color.fromARGB(255, 121, 119, 119),
                              ),
                              const ListTile(
                                leading: Icon(
                                  Icons.help,
                                  color: Color.fromARGB(255, 139, 161, 151),
                                ),
                                title: Text('Aide et assistance'),
                                trailing:
                                    Icon(Icons.keyboard_arrow_down_outlined),
                              ),
                              const Divider(
                                height: 2,
                                thickness: 0.5,
                                color: Color.fromARGB(255, 121, 119, 119),
                              ),
                              const ListTile(
                                leading: Icon(
                                  Icons.settings,
                                  color: Color.fromARGB(255, 139, 161, 151),
                                ),
                                title: Text('Paramètres et confidentialité'),
                                trailing:
                                    Icon(Icons.keyboard_arrow_down_outlined),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 25,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 199, 196, 196),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: const Text(
                                  'Déconnexion',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )))
            ],
          )
        ],
      ),
    );

    //   Container(color: Color.fromARGB(255, 209, 209, 209).withOpacity(0.4),

    //   //Pour avoir la taille en fonction des dimension de l'écran
    //   width: MediaQuery.of(context).size.width,
    //   height: MediaQuery.of(context).size.height,
    //   padding: const EdgeInsets.symmetric(vertical: 10.0),
    //   child: SingleChildScrollView(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         SizedBox(
    //           width: MediaQuery.of(context).size.width,
    //           height: 30.0,
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 const Text(
    //                   'Menu',
    //                   style: TextStyle(
    //                       color: Color.fromARGB(255, 83, 83, 83), fontSize: 20),
    //                 ),
    //                 Row(
    //                   children: [
    //                     Container(
    //                       margin: const EdgeInsets.only(right: 12.0),
    //                       width: 30,
    //                       padding: const EdgeInsets.all(4),
    //                       decoration: BoxDecoration(
    //                           color: Colors.blueGrey.withOpacity(.2),
    //                           shape: BoxShape.circle),
    //                       child: const Icon(
    //                         Icons.settings,
    //                         size: 20,
    //                         color: Color.fromARGB(255, 22, 22, 22),
    //                       ),
    //                     ),
    //                     Container(
    //                       margin: const EdgeInsets.only(right: 8.0),
    //                       width: 30,
    //                       padding: const EdgeInsets.all(4),
    //                       decoration: BoxDecoration(
    //                           color: Colors.blueGrey.withOpacity(.2),
    //                           shape: BoxShape.circle),
    //                       child: const Icon(
    //                         Icons.search_sharp,
    //                         color: Color.fromARGB(255, 22, 22, 22),
    //                       ),
    //                     ),
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding:
    //               const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Container(
    //                 margin: const EdgeInsets.only(right: 15.0),
    //                 child: const CircleAvatar(
    //                   radius: 25.0,
    //                   backgroundImage:
    //                       AssetImage('assets/images/profils/pp1.jpg'),
    //                 ),
    //               ),
    //               Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: const [
    //                   Text(
    //                     "Okono Wilfried",
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.w700, fontSize: 17),
    //                   ),
    //                   Text("Voir votre profil")
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //         const Padding(
    //           padding: EdgeInsets.all(10.0),
    //           child: Text('Vos Raccourcis'),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.symmetric(vertical: 5),
    //           width: MediaQuery.of(context).size.width,
    //           height: 130.0,
    //           child: ListView(
    //             scrollDirection: Axis.horizontal,
    //             children: const [
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article1.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article2.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article3.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article4.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article5.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article11.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article12.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article13.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article14.jpg",
    //                 name: "Stores",
    //               ),
    //               SmallShortCutWidget(
    //                 image: "assets/images/articles/article15.jpg",
    //                 name: "Stores",
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Padding(
    //           padding: EdgeInsets.all(10.0),
    //           child: Text('Tous les raccourcis'),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: Column(
    //             children: [
    //               Row(
    //                 children: const [
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_bookmark.ico",
    //                       name: 'Enregistrements'),
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_team.ico", name: 'Amis'),
    //                 ],
    //               ),
    //               Row(
    //                 children: const [
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_people.ico",
    //                       name: 'Groupes'),
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_activity_feed.ico",
    //                       name: 'Fils'),
    //                 ],
    //               ),
    //               Row(
    //                 children: const [
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_small_business.ico",
    //                       name: 'Marketplace'),
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_TV_Show.ico",
    //                       name: 'Vid"os sur Watch'),
    //                 ],
    //               ),
    //               Row(
    //                 children: const [
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_memories.ico",
    //                       name: 'Souvenirs'),
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_Flag.ico", name: 'Pages'),
    //                 ],
    //               ),
    //               Row(
    //                 children: const [
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_instagram_reels.ico",
    //                       name: 'Reels'),
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_event_accepted.ico",
    //                       name: 'Evènements'),
    //                 ],
    //               ),
    //               Row(
    //                 children: const [
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_facebook_gaming.ico",
    //                       name: 'Gaming'),
    //                   ShortCutWidget(
    //                       image: "assets/icons/icons8_literature.ico",
    //                       name: 'Stories'),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           width: MediaQuery.of(context).size.width - 25,
    //           padding: const EdgeInsets.all(10),
    //           margin:
    //               const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
    //           decoration: BoxDecoration(
    //             color: const Color.fromARGB(255, 199, 196, 196),
    //             borderRadius: BorderRadius.circular(5.0),
    //           ),
    //           child: const Text(
    //             'Voir plus',
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //         const Divider(
    //           height: 2,
    //           thickness: 0.5,
    //           color: Color.fromARGB(255, 121, 119, 119),
    //         ),
    //         const ListTile(
    //           leading: Icon(
    //             Icons.handshake,
    //             color: Color.fromARGB(255, 139, 161, 151),
    //           ),
    //           title: Text('Ressources communautaires'),
    //           trailing: Icon(Icons.keyboard_arrow_down_outlined),
    //         ),
    //         const Divider(
    //           height: 2,
    //           thickness: 0.5,
    //           color: Color.fromARGB(255, 121, 119, 119),
    //         ),
    //         const ListTile(
    //           leading: Icon(
    //             Icons.help,
    //             color: Color.fromARGB(255, 139, 161, 151),
    //           ),
    //           title: Text('Aide et assistance'),
    //           trailing: Icon(Icons.keyboard_arrow_down_outlined),
    //         ),
    //         const Divider(
    //           height: 2,
    //           thickness: 0.5,
    //           color: Color.fromARGB(255, 121, 119, 119),
    //         ),
    //         const ListTile(
    //           leading: Icon(
    //             Icons.settings,
    //             color: Color.fromARGB(255, 139, 161, 151),
    //           ),
    //           title: Text('Paramètres et confidentialité'),
    //           trailing: Icon(Icons.keyboard_arrow_down_outlined),
    //         ),
    //         Container(
    //           width: MediaQuery.of(context).size.width - 25,
    //           padding: const EdgeInsets.all(10),
    //           margin:
    //               const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
    //           decoration: BoxDecoration(
    //             color: const Color.fromARGB(255, 199, 196, 196),
    //             borderRadius: BorderRadius.circular(5.0),
    //           ),
    //           child: const Text(
    //             'Déconnexion',
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
