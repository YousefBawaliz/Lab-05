import 'package:fifthlab/primaryscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TabsPage();
                      },
                    ));
                  },
                  icon: Icon(Icons.home),
                  label: Text("Go to primary page")))
        ],
      ),
      body: Center(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: Text(
          "welcome to home page",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
              backgroundColor: Colors.white70),
        ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.pvamu.edu/cahs/wp-content/uploads/sites/27/background-food-fruits-vegetables-collection-fruit-vegetable-portrait-format-healthy-eating-diet-apples-oranges-tomatoes-190446153.jpg"))),
      )),
    );
  }
}
