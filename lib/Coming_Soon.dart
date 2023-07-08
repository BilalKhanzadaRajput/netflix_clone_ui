import 'package:flutter/material.dart';
import 'package:projects/Coming_Soon_Movies.dart';
import 'package:projects/RootApp.dart';
import 'package:projects/download_page.dart';
import 'package:projects/search_page.dart';

class ComingSoon extends StatefulWidget {
  ComingSoon({Key? key}) : super(key: key);

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Coming Soon",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.collections_bookmark,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/images/profile.jpeg",width: 26,fit: BoxFit.cover,),
            onPressed: () {},
          )
        ],
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications_none_outlined,
                      size: 28,
                      color: Colors.white.withOpacity(0.9),),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Notifications",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.9)),)

                  ],
                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.white.withOpacity(0.9),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:List.generate(comingSoonJson.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(comingSoonJson[index]['img']),fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2)
                            ),
                          ),
                        ],
                      ),
                    ),
                    comingSoonJson[index]['duration'] ? Column(
                      children: [
                        SizedBox(
                            height: 20
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.7)
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width * 0.34,
                          height: 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red.withOpacity(0.7)
                          ),
                        ),
                      ],
                    ) : Container(),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(comingSoonJson[index]['title_img'],
                          width: 120,

                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.notifications_none_outlined,
                                  color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Remind me",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.info_outline,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Info",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text(comingSoonJson[index]['date'],style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 15),
                      child: Text(comingSoonJson[index]['title'],style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 15),
                      child: Text(comingSoonJson[index]['description'],style: TextStyle(
                          color: Colors.white,height: 1.4,
                          fontSize: 18
                      ),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 15),
                      child: Text(comingSoonJson[index]['type'],style: TextStyle(
                          color: Colors.white,height: 1.4,

                          fontSize: 12
                      ),),
                    ),



                  ],
                  
                ),
              );
            }),
          ),
        ],
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
