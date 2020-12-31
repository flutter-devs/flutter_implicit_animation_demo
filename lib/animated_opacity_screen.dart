import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  @override
  _AnimatedOpacityScreenState createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double height = 250;
  double width = 300;
  double opacity = 0.4;
  Color color = Colors.cyan;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text("Implicit Animation Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedOpacity(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          opacity: opacity,
          duration: Duration(milliseconds:600),
          curve: Curves.easeInToLinear,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            opacity = opacity == 0.4 ? 1.0 : 0.4;
          });

        },
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
