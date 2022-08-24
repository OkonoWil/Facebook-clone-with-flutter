import 'package:flutter/material.dart';

class ShortCutWidget extends StatelessWidget {
  const ShortCutWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 20,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(image),
          ),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
