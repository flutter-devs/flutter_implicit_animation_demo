import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  @override
  _AnimatedCrossFadeScreenState createState() => _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  CrossFadeState state = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text("Implicit Animation Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          secondChild: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          crossFadeState: state,
          duration: Duration(seconds:1),
          firstCurve: Curves.easeInToLinear,
          secondCurve: Curves.easeInToLinear,
          sizeCurve: Curves.bounceOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            state = state == CrossFadeState.showFirst?
            CrossFadeState.showSecond:CrossFadeState.showFirst;
          });

        },
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
