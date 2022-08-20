import 'package:flutter/material.dart';

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
