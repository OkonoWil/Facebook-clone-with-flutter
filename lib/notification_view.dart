import 'package:flutter/material.dart';

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
