import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, HomePage.id);
        }, icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: Center(
        child: Text("home"),
      ),
    );
  }
}
