import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List<String> titles = [
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
  ];

  final List<Widget> imagess = [
    Image.asset('images/e1.png'),
    Image.asset('images/e2.png'),
    Image.asset('images/e3.png'),
    Image.asset('images/e4.png'),
    Image.asset('images/e5.png'),
    Image.asset('images/e6.png')
  ];
  Color mycolor = Colors.black;
  var Simage = "images/e3.png";
  var name = 'Bluebery';
  var title = 'Larem ipsum dolor sit amet consectetur adipiscing';
  var price = '2.50';
  double stars = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.white,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment(0.8, 0.0),
            colors: [
              Colors.pink,
              Colors.cyan,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  color: Colors.black.withOpacity(0.3),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 450,
                      ),
                      Text(
                        'CONES',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'CUPS',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'BRICK',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.drag_handle_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.black,
                  width: double.infinity,
                  height: 620,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        right: 70,
                        child: Container(
                          //color: Colors.white,
                          height: 600,
                          width: 350,
                          child: VerticalCardPager(
                            //initialPage: 0,
                            align: ALIGN.RIGHT,
                            titles: titles,
                            images: imagess,
                            onPageChanged: (page) {
                              setState(() {
                                if (page == 0) {
                                  Simage = 'images/e1.png';
                                  name = 'Fapachino';
                                  title =
                                      'drgkjndr  szxd rzrd zr vzsdv kjzs zskj zd vsjv zv sk sz';
                                  stars = 3;
                                } else if (page == 1) {
                                  Simage = 'images/e2.png';
                                  name = 'Fapachino';
                                  title =
                                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution';
                                  stars = 3;
                                } else if (page == 2) {
                                  Simage = 'images/e3.png';
                                  name = 'Bluebery';
                                  title =
                                      'Larem ipsum dolor sit amet consectetur adipiscing';
                                  stars = 4;
                                } else if (page == 3) {
                                  Simage = 'images/e4.png';
                                  name = 'Fapachino';
                                  title =
                                      'drgkjndr  szxd rzrd zr vzsdv kjzs zskj zd vsjv zv sk sz';
                                  stars = 3;
                                } else if (page == 4) {
                                  Simage = 'images/e5.png';
                                  name = 'Fapachino';
                                  title =
                                      'drgkjndr  szxd rzrd zr vzsdv kjzs zskj zd vsjv zv sk sz';
                                  stars = 3;
                                } else if (page == 5) {
                                  Simage = 'images/e6.png';
                                  name = 'Fapachino';
                                  title =
                                      'drgkjndr  szxd rzrd zr vzsdv kjzs zskj zd vsjv zv sk sz';
                                  stars = 3;
                                }
                              });
                              print(page);
                              //await Future.delayed(Duration(seconds: 10));
                            },
                            onSelectedItem: (index) {},
                          ),
                        ),
                      ),
                      //show(),
                      Positioned(
                        top: 40,
                        left: 150,
                        child: Container(
                          width: 900,
                          height: 500,
                          //color: Colors.white,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 240,
                                child: Container(
                                  width: 500,
                                  height: 500,
                                  child: Image.asset(
                                    'images/cand.png',
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 100,
                                left: 400,
                                child: Text(
                                  '$name',
                                  style: GoogleFonts.playball(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 90)),
                                ),
                              ),
                              Positioned(
                                top: 240,
                                left: 400,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RatingBar.builder(
                                        initialRating: stars,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 400,
                                        child: Text(
                                          '   $title',
                                          style: GoogleFonts.armata(
                                            textStyle: TextStyle(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        ' \$ $price',
                                        style: GoogleFonts.armata(
                                          textStyle: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                child: Image.asset(
                                  "$Simage",
                                  width: 500,
                                  height: 500,
                                ),
                              ),
                              Positioned(
                                bottom: 50,
                                right: 170,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'BUY',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      CircleAvatar(
                                        child:
                                            Icon(Icons.arrow_forward_rounded),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -90,
                        top: 280,
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-25 / 100),
                          child: Container(
                            height: 50,
                            //width: 600,
                            //color: Colors.black.withOpacity(0.3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'CONES',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Text(
                                  'CUPS',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Text(
                                  'BRICK',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
