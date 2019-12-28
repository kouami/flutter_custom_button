import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  FancyButton(
      {this.onPressed,
      this.fillColor,
      this.splashColor,
      this.rotate,
      this.rotateValue});

  final GestureTapCallback onPressed;
  final Color fillColor;
  final Color splashColor;
  final bool rotate;
  final int rotateValue;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: fillColor,
      splashColor: splashColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buildIconWidget(rotate, rotateValue),
            const SizedBox(width: 8.0),
            const Text("BUY SOMETHING", style: TextStyle(color: Colors.black))
          ],
        ),
      ),
      onPressed: onPressed,
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      shape: const StadiumBorder(),
    );
  }

  Widget buildIconWidget(bool rotate, int rotateValue) {
    if (rotate) {
      return RotatedBox(
        quarterTurns: rotateValue,
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.pink,
        ),
      );
    }
    return const Icon(
      Icons.add_shopping_cart,
      color: Colors.pink,
    );
  }
}
