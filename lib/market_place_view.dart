import 'package:flutter/material.dart';

/////////////
/////////////
/////////////  MarketPlaceView
/////////////
/////////////
class MarketPlaceView extends StatefulWidget {
  const MarketPlaceView({Key? key}) : super(key: key);

  @override
  State<MarketPlaceView> createState() => _MarketPlaceViewState();
}

class _MarketPlaceViewState extends State<MarketPlaceView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      children: [
        for (int i = 1; i < 13; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/articles/article$i.jpg"),
                      fit: BoxFit.cover,
                    )),
                  )),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('YO'),
                ),
              )
            ],
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/articles/article2.jpg'),
                    fit: BoxFit.cover,
                  )),
                )),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'YO',
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
        )
      ],
    );
  }
}
