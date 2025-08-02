import 'package:flutter/material.dart';

/*
 in This Dart File we Will Explain Expanded Widget And
 his Used and Cases To Use */
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      /* Not Error in This Case Because The Expanded Widget
       Work in The Remaining Height */
      body: Column(
        // The Defalut Height of The Coulmn is 800
        children: [
          Expanded(
            /*
            felx attrbuite by Default equal 1 and
             it show when you use Two Expanded at least
             */
            flex: 2,

            child: Container(color: Colors.grey),
          ),
          Expanded(flex: 1, child: Container(color: Colors.green)),
          Expanded(flex: 1, child: Container(color: Colors.amber)),
        ],

        /* 

        This Code mean is The Ratio of The Screen is 7
        and The Gray Container Contain 5/7 form the Screen
        The Height of The Gray Container is 5/7 = { 0.71428571428 }
        The Height of the Green Container is 1/7={ 0.14285714285 }
       The Height of the Yellow Container is 1/7={ 0.14285714285 }
        Expanded Widget Available on The Row And The Coulmn

       */
      ),
    );
  }
}
