import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String image;
  final String nama;
  final String alamat;
  final double marginLeft;
  final double widthImage;

  const MyText(
      {super.key,
      required this.image,
      required this.nama,
      required this.alamat,
      required this.marginLeft,
      required this.widthImage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(image),
          width: widthImage,
        ),
        Container(
          margin: EdgeInsets.only(left: marginLeft),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nama),
              Text(alamat),
            ],
          ),
        )
      ],
    );
  }
}
