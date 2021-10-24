import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

class SingularSlider extends StatefulWidget {
  const SingularSlider({Key? key}) : super(key: key);

  @override
  _SingularSliderState createState() => _SingularSliderState();
}

class _SingularSliderState extends State<SingularSlider> {
  @override
  Widget build(BuildContext context) {
    return SingleCircularSlider(
      100,
      25,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.deepPurple.shade100,
                  blurRadius: 50.0,
                  spreadRadius: 15.0)
            ],
            borderRadius: BorderRadius.circular(200.0)),
        child: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '18.5 ',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '°C',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 25.0),
                ),
              ],
            ),
          ),
        ),
      ),
      height: 200,
      width: 200,
      primarySectors: 4,
      sliderStrokeWidth: 0.0,
      baseColor: Colors.deepPurple.shade100,
      handlerColor: Colors.deepPurple[900],
      showHandlerOutter: true,
      showRoundedCapInSelection: true,
      selectionColor: Colors.deepPurple[800],
      handlerOutterRadius: 5.0,
    );
  }
}
