import 'package:fifthlab/UrlTile.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("placeholder"),
          bottom: TabBar(tabs: [
            IconButton(onPressed: () {}, icon: Icon(LineIcons.lemon)),
            IconButton(onPressed: () {}, icon: Icon(LineIcons.seedling)),
            IconButton(onPressed: () {}, icon: Icon(LineIcons.comment))
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        'Fruits',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.santosfood.com/wp-content/uploads/2020/01/img-7.jpg'))),
                    ),
                    ListTile(
                      title: Text("ORANGE"),
                      subtitle: Text("1.50\$ per kilo"),
                      leading: Icon(LineIcons.fruitApple),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/red-apple-picture-id184276818?k=20&m=184276818&s=612x612&w=0&h=QxOcueqAUVTdiJ7DVoCu-BkNCIuwliPEgtAQhgvBA_g='))),
                    ),
                    ListTile(
                      title: Text("Apple"),
                      subtitle: Text("1.70\$ per kilo"),
                      leading: Icon(LineIcons.fruitApple),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://www.frutas-hortalizas.com/img/fruites_verdures/presentacio/14.jpg'))),
                    ),
                    ListTile(
                      title: Text("Kiwi"),
                      subtitle: Text("2.00\$ per kilo"),
                      leading: Icon(LineIcons.fruitApple),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.vapesale24.com/1753-large/tob-flavour-10ml-grape.jpg'))),
                    ),
                    ListTile(
                      title: Text("Grapes"),
                      subtitle: Text("1.10\$ per kilo"),
                      leading: Icon(LineIcons.fruitApple),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        'Vegetables',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://kiranacompare.com/wp-content/uploads/2020/11/The-lost-plot-growing-carrots-iStock-471680420.jpg'))),
                    ),
                    ListTile(
                      title: Text("Carrot"),
                      subtitle: Text("5.50\$ per kilo"),
                      leading: Icon(LineIcons.carrot),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://t4.ftcdn.net/jpg/02/66/68/37/360_F_266683754_wzx9XxeNXKudct2Q3qwQf1PvVaQaKOf6.jpg'))),
                    ),
                    ListTile(
                      title: Text("Cucamber"),
                      subtitle: Text("1.77\$ per kilo"),
                      leading: Icon(LineIcons.carrot),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://organiclivestockandcrops.org/wp-content/uploads/2018/03/organic-broccoli-600x510.png'))),
                    ),
                    ListTile(
                      title: Text("Brocoli"),
                      subtitle: Text("2.51\$ per kilo"),
                      leading: Icon(LineIcons.carrot),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://t4.ftcdn.net/jpg/00/57/20/83/360_F_57208390_l5pqvCkHwBccUmgl4qca5Wx5JnFblIAN.jpg'))),
                    ),
                    ListTile(
                      title: Text("Pumpkin"),
                      subtitle: Text("7.30\$ per kilo"),
                      leading: Icon(LineIcons.carrot),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              UrlClass(
                myfunction: Facebook_Function,
                platformIcon: Icons.facebook,
                platformSubTitle: "join the facebook page",
                platformTitle: "facebook",
              ),
              UrlClass(
                myfunction: instagram_Function,
                platformIcon: LineIcons.instagram,
                platformSubTitle: "join the Instagram page",
                platformTitle: "instagram",
              ),
            ],
          )
        ]),
      ),
    );
  }
}
