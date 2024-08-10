import 'package:flutter/material.dart';
import 'package:quiz/styledtext.dart';

const start = Alignment.topLeft;
const end = Alignment.bottomRight;

class index extends StatelessWidget {
  const index(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/one.png",
              width: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            stykedtext("THE ONE QUIZ"),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              onPressed: startquiz,
              style: OutlinedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('start'),
            )
          ],
        ),
      ),
    );
  }
}
