import 'package:flutter/material.dart';
import 'package:gb_app_ui/pages/routes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(icon: Icon(Icons.image), 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RoutePage()));
            } ),
      ),
    );
  }
}
