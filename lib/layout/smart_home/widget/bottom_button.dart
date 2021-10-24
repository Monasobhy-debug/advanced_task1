import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.0),
            color: Colors.deepPurple.shade800,
          ),
          child: Center(
              child: Text(
            'Set temperature',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          )),
        ),
      ),
    );
  }
}
