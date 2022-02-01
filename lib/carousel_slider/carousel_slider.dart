import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({Key? key}) : super(key: key);

  @override
  _CarouselViewState createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {

  var _currentindex = 0;
  var _bottomBarIndex = 0;

  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xE6E6E6),
      ),
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.blueGrey,
            backgroundColor: Colors.transparent,
            showUnselectedLabels: true,
            selectedFontSize: 18,
            unselectedFontSize: 16,
            iconSize: 30,
            type: BottomNavigationBarType.shifting,
            elevation: 3,
            currentIndex: _bottomBarIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                // backgroundColor: Colors.transparent
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tv),
                label: 'Movie',
                // backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face),
                label: 'Profile',
                //   backgroundColor:Colors.transparent
              )
            ],
            onTap: (index){
              setState(() {
                _bottomBarIndex = index;
              });
            },
          ),
          body: Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.add),
                    iconSize: 45,
                    onPressed: () {},
                  ),
                  const Text(
                    'Player',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'FLEX',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12),
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        iconSize: 30,
                        color: Colors.black,
                        // color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider.builder(
                  itemCount: imagesList.length,
                  itemBuilder: (context, index, realIndex) {
                    var imageUrl = imagesList[index];
                    return buildImage(imageUrl, index);
                  },
                  options: CarouselOptions(
                    viewportFraction: 0.7,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    pageSnapping: true,
                    enableInfiniteScroll: true,
                    onPageChanged: (index, realReason) {
                      setState(() {
                        _currentindex = index;
                      });
                    },
                  )),
              const SizedBox(
                height: 15,
              ),
              buildDot(),
              SizedBox(
                height: 40,
                child: Container(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: const Text(
                    'Continue Watching',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 120,
                child: ListView.builder(
                    itemCount: imagesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45)),
                        child: Image.network(imagesList[index]),
                      );
                    }),
              ),
              SizedBox(
                height: 40,
                child: Container(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: const Text(
                    'Trending',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),Container(
                height: 100,
                child: ListView.builder(
                    itemCount: imagesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45)),
                        child: Image.network(imagesList[index]),
                      );
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String url, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55),
        shape: BoxShape.rectangle,
        color: Colors.black,
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }


  Widget buildDot() =>
      Center(
        child: AnimatedSmoothIndicator(
          activeIndex: _currentindex,
          count: imagesList.length,
          effect: const ScrollingDotsEffect(
            dotColor: Colors.black12,
            activeDotColor: Colors.black,
            dotHeight: 12,
            dotWidth: 12,
          ),
        ),
      );
}
