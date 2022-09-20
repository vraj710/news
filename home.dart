import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = new TextEditingController();
  List<String> navbaritem = [
    "Top News",
    "Finance",
    "Political",
    "Health",
    "World News",
    "India"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EVERYDAY NEWS"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            //Search Wala Container

            padding: EdgeInsets.symmetric(horizontal: 8),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 190, 188, 188),
                borderRadius: BorderRadius.circular(24)),
            child: Row(
              children: [
                GestureDetector(
                  // onTap: () {
                  //   if ((searchController.text).replaceAll(" ", "") == "") {
                  //     print("Blank search");
                  //   } else {
                  //     // Navigator.push(context, MaterialPageRoute(builder: (context) => Search(searchController.text)));
                  //   }
                  // },
                  child: Container(
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 36, 99, 209),
                    ),
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here",
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (() {
                    print(
                      navbaritem[index],
                    );
                  }),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 7, 201, 255),
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: Text(
                        navbaritem[index],
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 29, 28, 28)),
                      ),
                    ),
                  ),
                );
              },
              itemCount: navbaritem.length,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
              ),
              items: items.map((items) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/news.jpg",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0),
                                        Colors.black
                                      ],
                                      // begin: Alignment.topCenter,
                                      // end: Alignment.bottomCenter,
                                    )),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Text(
                                    "dvchjsdvjhvhcvwhvhvchwvehh",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                )))
                      ]),
                    ),
                  );
                });
              }).toList(),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 25, 0, 0),
                  padding: EdgeInsets.symmetric(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Latest News",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 5.0,
                            child: Stack(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("assets/images/news.jpg")),
                              Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.black.withOpacity(0),
                                            Color.fromARGB(255, 0, 0, 0),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )),
                                    padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "News Headline",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("Blah blah Blah",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12))
                                      ],
                                    ),
                                  )),
                            ]),
                          ));
                    }),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Show More"))
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  final List items = [Colors.greenAccent, Colors.yellow, Colors.blueAccent];
}
