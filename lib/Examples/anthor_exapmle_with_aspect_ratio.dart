import 'package:flutter/material.dart';

class AnthorExapmleWithAspectRatio extends StatelessWidget {
  const AnthorExapmleWithAspectRatio({super.key});
  /*
in This Case i used ratio =1 ,
 and when the Size of The Screen is large
  you Mustn't put on in The Center 
  so you Should use Align Widget
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,

        child: AspectRatio(
          aspectRatio: 1, // mean the ratio from width to height =1
          child: Container(color: Colors.red),
        ),
      ),
    );
  }
}
