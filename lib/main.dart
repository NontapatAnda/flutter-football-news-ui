
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _MyPage();
}

class _MyPage extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          searchBar(),
          SizedBox(height: 25,),
          topic('Breaking News'),
          SizedBox(height: 20,),
          liveContent(),
          SizedBox(height: 20,),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 15),
            children: [
              category('All'),
              category('My Teams'),
              category('Leagues'),
              category('Transfer'),
              category('News')
            ],             
            ),
          ),
          SizedBox(height: 20,),
          topic('Recommended for you'),
          SizedBox(height: 10,),
          subContent()
        ],
      ),
    );
  }

  Column subContent() {
    return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                width: 150,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Carrick.jpg'),
                    fit: BoxFit.cover)
                ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Text('Michael Carrick: Man Utd \nreach agreement to take over \nat Old Trafford until the summer'),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/skysport.png'),
                  ),
                  SizedBox(width: 10,),
                  Text('SKY SPORT \t* 2hr ago',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.6)
                    )
                  )
                    ],
                  )
                  ],
                )
              ],

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 20),
                width: 150,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Xabi.jpg'),
                    fit: BoxFit.cover)
                ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('Alonso: Coaching Real Madrid\nwas an honour, I leave with pride'),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/skysport.png'),
                  ),
                  SizedBox(width: 10,),
                  Text('SKY SPORT \t* 1hr ago',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.6)
                    )
                  )
                    ],
                  )
                  ],
                )
              ],

            ),

          ],
        );
  }

  Card liveContent() {
    return Card(
          margin: EdgeInsets.only(left: 25,right: 25),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Stack(
            children: [
              Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/BrightonWin.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withValues(alpha: 0.2),
                  BlendMode.darken
                  ),
                  ),
            ),
          ),
         Padding(
          padding: EdgeInsets.only(top: 12,left: 20),
          child: Image.asset('assets/images/live-stream.png',
          width: 50,),
          ),
          Positioned(
            bottom: 40,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Manchester United vs Brighton',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18)
            ),
            SizedBox(height: 10),
            Text('Old Trafford * 1 - 2 * 78"',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600)
              )
              ],
            ),
          )
            ],
          )   
        );
  }

  Row topic(String topics) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(topics,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
              ),     
              ),
              Padding(
                padding: EdgeInsets.only(right:30),
                child: Text('Show more',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlue
                ),
                ),
                )
          ],
        );
  }

  Container searchBar() {
    return Container(
          margin: EdgeInsets.only(top: 40,left: 20,right: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 226, 226),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.search,
                color: Colors.grey,),),
                SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search topic...',
                    border: InputBorder.none
                  )
                ),
              )
            ],
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 25,top: 20),
        child: Icon(Icons.menu,
        size: 35,),
      ),
      actions: [
        Padding(
        padding: EdgeInsets.only(right: 25,top: 25),
        child:Icon(Icons.notifications_none_rounded,
        size: 35,) ,)
      ],
    );
  }

  Widget category(String title){
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(title,
        style: TextStyle(color:Colors.white,
        fontSize: 15),
      ),
      ),
    );
  }
}