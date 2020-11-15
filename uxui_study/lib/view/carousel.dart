import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  CarouselController _controller = CarouselController();
  int pagenum = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: _controller,
        options: CarouselOptions(
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            height: 100,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 10),
            autoPlayAnimationDuration: Duration(seconds: 1)),
        items: imageSlider(context));
  }
}

List<Widget> imageSlider(BuildContext context) {
  List<int> images = [1, 2, 3, 4, 5];
  List<Widget> imageSliders = images
      .map((i) => Container(
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(color: Colors.amber),
          child: new Image.network(
              "https://cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/BMUUFU7EADBRPOWYGDA6E52RTQ.jpg",
              fit: BoxFit.cover),
        ),
        Positioned(
          right: 150,
          bottom: 5,
          child: Container(
            child: Text(
              i.toString() + "/" + images.asMap().length.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: RaisedButton(
              onPressed: () {
                print("hi");
              },
              color: Colors.white,
              child: Text("모두 보기")),
        )
      ])))
      .toList();
  return imageSliders;
}