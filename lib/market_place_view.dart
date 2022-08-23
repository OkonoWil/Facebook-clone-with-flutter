import 'package:flutter/material.dart';
import 'package:facebook_clone/Article.dart';

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
  List<Article> listArticles = [
    Article(
      image: "assets/images/articles/article1.jpg",
      description: "Modem 4G tout réseaux",
    ),
    Article(
      image: "assets/images/articles/article2.jpg",
      description: "Laptop lenovo i7",
    ),
    Article(
      image: "assets/images/articles/article3.jpg",
      description: "Iphone 6S à 13 Pro max",
    ),
    Article(
      image: "assets/images/articles/article4.jpg",
      description: "Console de jeux PS4, PS5, Xbox One",
    ),
    Article(
      image: "assets/images/articles/article5.jpg",
      description: "chaussures 30000FCFA",
    ),
    Article(
      image: "assets/images/articles/article6.jpg",
      description: "Sac à dos 10000FCFA",
    ),
    Article(
      image: "assets/images/articles/article7.jpg",
      description: "Iphone 11 & 12",
    ),
    Article(
      image: "assets/images/articles/article8.jpg",
      description: "Col roulé : 3000FCFA",
    ),
    Article(
      image: "assets/images/articles/article9.jpg",
      description: "Airports pro 5000FCFA",
    ),
    Article(
      image: "assets/images/articles/article10.jpg",
      description: "Blouson jeans",
    ),
    Article(
      image: "assets/images/articles/article11.jpg",
      description: "Mac book",
    ),
    Article(
      image: "assets/images/articles/article12.jpg",
      description: "Disque SSD 256Go",
    ),
    Article(
      image: "assets/images/articles/article13.jpg",
      description: "Disque dur 500Go - 15000FCFA",
    ),
    Article(
      image: "assets/images/articles/article14.jpg",
      description: "Film et séries",
    ),
    Article(
      image: "assets/images/articles/article15.jpg",
      description: "Pantalons 8000FCFA",
    ),
    Article(
      image: "assets/images/articles/article16.jpg",
      description: "Pentalons monsieur",
    ),
    Article(
      image: "assets/images/articles/article17.jpg",
      description: "Pied nu",
    ),
    Article(
      image: "assets/images/articles/article18.jpg",
      description: "PowerBank 8000FCFA",
    ),
    Article(
      image: "assets/images/articles/article19.jpg",
      description: "Produit de barbe",
    ),
    Article(
      image: "assets/images/articles/article20.jpg",
      description: "Smart TV 4K LG",
    ),
    Article(
      image: "assets/images/articles/article21.jpg",
      description: "Laptop HP i7 11e Gén",
    ),
    Article(
      image: "assets/images/articles/article22.jpg",
      description: "Ensemble Turquie 12000FCFA",
    ),
    Article(
      image: "assets/images/articles/article23.jpg",
      description: "Costumes italiens croisés",
    ),
    Article(
      image: "assets/images/articles/article24.jpg",
      description: "DELL Gaming 800 000FCFA",
    ),
  ];

  List<CarteItem> myCarteList(List<Article> articles) {
    List<CarteItem> carteList = [];
    for (var article in articles) {
      CarteItem carteItem = CarteItem(
        image: article.image,
        description: article.description,
      );
      carteList.add(carteItem);
    }
    return carteList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        children: myCarteList(listArticles)

        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Expanded(
        //           flex: 4,
        //           child: Container(
        //             width: double.infinity,
        //             decoration: const BoxDecoration(
        //                 image: DecorationImage(
        //               image: AssetImage('assets/images/articles/article2.jpg'),
        //               fit: BoxFit.cover,
        //             )),
        //           )),
        //       const Expanded(
        //         flex: 1,
        //         child: Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child: Text(
        //             'YO',
        //             textAlign: TextAlign.start,
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   ),
        //   Container(
        //     color: Colors.red,
        //     height: 100,
        //   )
        // ],
        );
  }
}

class CarteItem extends StatelessWidget {
  final String image;
  final String description;
  const CarteItem({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
