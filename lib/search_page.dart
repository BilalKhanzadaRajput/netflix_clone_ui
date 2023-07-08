import 'package:flutter/material.dart';
import 'package:projects/Coming_Soon.dart';
import 'package:projects/RootApp.dart';
import 'package:projects/download_page.dart';
import 'package:projects/search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.25),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,

                  hintText: "Searches",

                  hintStyle: TextStyle(color: Colors.white),

                  prefixIcon: Icon(Icons.search_rounded,
                      color: Colors.white.withOpacity(0.6))),
            ),
          ),
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 18, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Top Searches",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
                children: List.generate(searchJson.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: (size.width - 36) * 0.8,
                      height: 80,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 120,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            searchJson[index]['img']),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                width: 120,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: (size.width - 36) * 0.4,
                            child: Text(
                              searchJson[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: (size.width - 36) * 0.2,
                      height: 80,
                      child: Center(
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2,color: Colors.white)
                          ),
                          child: Center(
                            child: Icon(Icons.play_arrow,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })),
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
