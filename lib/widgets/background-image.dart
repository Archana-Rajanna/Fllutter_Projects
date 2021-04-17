import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [Colors.black54, Colors.transparent]).createShader(rect),
      //  height: 300,
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        )),
      ),
    );
  }
}
