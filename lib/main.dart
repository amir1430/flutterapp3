import 'package:flutter/material.dart';
import 'cusIcon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project3',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'home',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              icon: Icon(
                Icons.home,
                color: Colors.redAccent,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Search'),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text('BookMark'),
              icon: Icon(Icons.bookmark_border),
            ),
            BottomNavigationBarItem(
              title: Text('PRofile'),
              icon: Icon(Icons.person_outline),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeTop(),
              HomeBottom(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://stmed.net/sites/default/files/movie-wallpapers-29755-4070664.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0x00000000),
                          const Color(0xD9333333),
                        ],
                        stops: [
                          0.0,
                          0.9,
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 0.1),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120, left: 95),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'watch',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          Text(
                            'WALL-E',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 370,
            right: 10.0,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFE52020),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: RaisedButton(
                        onPressed: () {},
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 80.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'watch now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.trending_flat,
                              size: 25,
                              color: Colors.white,
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeBottom extends StatelessWidget {
  List<String> images = [
    'http://hdqwalls.com/wallpapers/it-2017-movie-4k-34.jpg',
    'https://wallpaperaccess.com/full/329583.jpg',
    'https://wallpaperplay.com/walls/full/7/3/a/162157.jpg'
  ];
  List<String> title = ['IT', 'Avengers', 'Alien'];
  List<Widget> movie() {
    List<Widget> movielist = new List();
    for (var i = 0; i < 3; i++) {
      var movieitem = Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 25.0),
        child: Container(
          height: 220,
          width: 135,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  images[i],
                  width: double.infinity,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Text(
                  title[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      );
      movielist.add(movieitem);
    }
    return movielist;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 70),
      height: 360,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Watch now',
                  style: TextStyle(fontSize: 23),
                ),
                FlatButton(
                  child: Text('View more'),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movie(),
            ),
          )
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);

    var controlpoint = Offset(35.0, size.height);
    var endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
