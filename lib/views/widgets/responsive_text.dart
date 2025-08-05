import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive Text Example")),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title Text",
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "This is body text. it should be responsive to the screen size.",

              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Scale Factor = width for the screen /breakpoint
  //responsiveFontSize = Base FontSize * Scale Factor
  //(min , max) fontSize = The aim of thisStep to Select Limit For FontSize
  double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    print(
      "Base Font Size = $fontSize , Lower Limit =$lowerLimit ,Upper Limit=$upperLimit ,responsive Font Size $responsiveFontSize , Final Font Size =${responsiveFontSize.clamp(lowerLimit, upperLimit)}",
    );
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}
