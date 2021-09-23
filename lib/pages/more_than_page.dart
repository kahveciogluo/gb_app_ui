import 'package:flutter/material.dart';

class MoreThanPage extends StatefulWidget {
  const MoreThanPage({Key? key}) : super(key: key);

  @override
  _MoreThanPageState createState() => _MoreThanPageState();
}

class _MoreThanPageState extends State<MoreThanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Center(
        child: Icon(
          Icons.construction_outlined,
          color: Colors.black54,
          size: 100,
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
      title: Center(child: Text("Daha Fazla", style: TextStyle(fontFamily: "Poppins", fontSize: 14.5, fontWeight: FontWeight.bold))),
    );
  }
}
