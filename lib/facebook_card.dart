import 'package:flutter/material.dart';

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
