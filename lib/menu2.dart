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
      color: Colors.grey.withOpacity(0.4),

      //Pour avoir la taille en fonction des dimension de l'écran
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(
                          color: Color.fromARGB(255, 83, 83, 83), fontSize: 20),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          width: 40,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(.2),
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
                              color: Colors.blueGrey.withOpacity(.2),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
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
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      Text("Voir votre profil")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
