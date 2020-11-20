import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Carousel extends StatefulWidget {
  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  CarouselController _controller = CarouselController();
  int pageNum = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children : [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              aspectRatio: 2,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 700),
              onPageChanged: (index, reason){
                setState(() {
                  pageNum = index;
                });
              }
            ),
            items: imageSlider(context)),
          Positioned(
            right: 74,
            bottom: 11,
            child: Container(
              child: Row(
                children: [
                  Text((pageNum+1).toString(),
                    style: GoogleFonts.notoSans(
                      fontSize: 10,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(" / 3",
                    style: GoogleFonts.notoSans(
                        fontSize: 10,
                        color: Color(0xFFFFFFFF)
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 0,
            child: Container(
              width: 66,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(180), bottomLeft: Radius.circular(180),),
                color: Color(0xFFDBDBDB),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("모두 보기", style: GoogleFonts.notoSans(
                    fontSize: 11,
                    letterSpacing: -0.33
                  ),textAlign: TextAlign.right,),
                  SvgPicture.asset(
                    'assets/images/icons/icon_arrow_right.svg',
                    height: 16,
                    width: 16,
                  ),
                ],
              )
            ),
          )
        ]
    );
  }

}

List<Widget> imageSlider(BuildContext context) {
  List<Image> images = [
    Image.asset("assets/images/banner/main_banner_01@3x.jpg"),
    Image.asset("assets/images/banner/main_banner_02@3x.jpg"),
    Image.asset("assets/images/banner/main_banner_03@3x.jpg"),
  ];
  List<Widget> imageSliders = images
      .map((i) =>
        Container(
            child: FittedBox(
              fit: BoxFit.fill,
              child: i,
          )
        )
      )
      .toList();
  return imageSliders;
}