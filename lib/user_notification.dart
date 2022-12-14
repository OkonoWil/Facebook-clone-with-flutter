import 'package:flutter/material.dart';
import 'package:facebook_clone/notification_view.dart';

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
                    child: const NotificationView(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
