import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var activeDiceImage = 'assets/image/dice_2';

  void rollDice = () {
    activeDiceImage = 'assets/images/dice_3';
    print('Changing image...');
  };

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice_1.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(

                  // padding: const EdgeInsets.only(
                  //   top: 30,
                  // ),         // add padding for spacing

                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 30,
                  )),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
