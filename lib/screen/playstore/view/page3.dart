import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black54,),
        actions: [
          Icon(Icons.search,color: Colors.black54,),
          Icon(Icons.more_vert,color: Colors.black54,)
        ],
      ),
    ));
  }
}
