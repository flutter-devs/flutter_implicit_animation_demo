import 'package:flutter/material.dart';
import 'package:flutter_implicit_animation_dem/animated_container_screen.dart';
import 'package:flutter_implicit_animation_dem/animated_cross_fade_screen.dart';
import 'package:flutter_implicit_animation_dem/animated_opacity_screen.dart';
import 'package:flutter_implicit_animation_dem/tween_animation_builder_Screen.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text('Implicit Animation Demo'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                RaisedButton(
                  child: Text('Animated Container'),
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AnimatedContainerScreen()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),
                ),
                SizedBox(height: 8,),
                RaisedButton(
                  child: Text('Animated Opacity'),
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AnimatedOpacityScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),

                RaisedButton(
                  child: Text('Animated Cross Fade'),
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AnimatedCrossFadeScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),


                ),
                SizedBox(height: 8,),

                RaisedButton(
                  child: Text('Tween Animation Builder',),
                  color: Colors.blueGrey,

                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TweenAnimationBuilderScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),


                ),
                
              ],
            ),
          )
      ), //center
    );
  }
}
