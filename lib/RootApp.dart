import 'package:flutter/material.dart';
import 'package:projects/Coming_Soon.dart';
import 'package:projects/download_page.dart';
import 'package:projects/home_list.dart';
import 'package:projects/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/banner.webp"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        child: SafeArea(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/logo.ico',
                                          width: 35,
                                          fit: BoxFit.cover,
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.collections_bookmark,
                                          size: 28,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: Image.asset(
                                          "assets/images/profile.jpeg",
                                          fit: BoxFit.cover,
                                          width: 26,
                                          height: 26,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "My List",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 12, left: 8, top: 2, bottom: 2),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Play",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.info_outline,
                            size: 25,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Info",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "My List",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children: List.generate(mylist.length, (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(mylist[index]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(6)),
                            );
                          })),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Popular on Netflix",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(popularList.length, (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(popularList[index]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(6)),
                            );
                          })),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Trending Now",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(trendingList.length, (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          trendingList[index]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(6)),
                            );
                          })),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Netflix Orignals",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(originalList.length, (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 165,
                              height: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          originalList[index]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(6)),
                            );
                          })),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Anime",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(animeList.length, (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(animeList[index]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(6)),
                            );
                          })),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.55),
                        Colors.black.withOpacity(0.0)
                      ],
                      end: Alignment.topCenter,
                      begin: Alignment.bottomCenter,
                    )),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                height: 500,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/title_img.webp",
                      width: 150,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Excting-Sci-Fi Drama - Sci-Fi Adventure",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
                  icon: Icon(
                    Icons.home,

                    color: Colors.white,

                    size: 35,
                  ),

                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ComingSoon()));
                },
                  icon:Icon(
                    Icons.play_circle_fill_outlined,

                    color: Colors.white,

                    size: 35,
                  ),

                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
                },
                  icon: Icon(
                    Icons.search_rounded,

                    color: Colors.white,

                    size: 35,
                  ),

                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DownloadsPage()));

                },
                  icon: Icon(
                    Icons.download,



                    color: Colors.white,

                    size: 35,
                  ),


                ),

                SizedBox(
                  height: 5,
                ),
                Text(
                  'Download',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
