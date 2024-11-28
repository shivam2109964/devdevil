import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:flutter/material.dart';

class VoidPlace extends StatelessWidget {
  const VoidPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DynamicScreenSize.heightMQ(
        context: context,
        reqHeight: 0.25,
      ),
      width: DynamicScreenSize.widthMQ(
        context: context,
        reqWidth: 1,
      ),
      child: Center(
        child: Image.asset(
          "assets/dev.png",
          height: 65,
        ),
      ),
    );
  }
}
