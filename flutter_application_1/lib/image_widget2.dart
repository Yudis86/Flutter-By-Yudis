import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImageWidget2 extends StatelessWidget {
  const ImageWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('assets/unnamed.jpg'),
        ),
      ],
    );
  }
}
