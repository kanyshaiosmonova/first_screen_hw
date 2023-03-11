import 'package:flutter/material.dart';

class BuildingContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final int number;

  const BuildingContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        // Add a Center widget to center the text horizontally and vertically
        child: Text(
          number
              .toString(), // Convert the number to string and display it as text
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<Color> colors = [Colors.red, Colors.yellow, Colors.green];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Building Containers',
      home: Scaffold(
        backgroundColor: const Color(0xffB2EBF1),
        appBar: AppBar(
          title: Center(child: Text('First Screen on my App')),
        ),
        body: Row(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                BuildingContainer(
                  width: 80,
                  height: 80,
                  color: colors[0],
                  number: 1,
                ),
                BuildingContainer(
                    width: 100, height: 100, color: colors[1], number: 2),
                BuildingContainer(
                    width: 120, height: 120, color: colors[2], number: 3),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildingContainer(
                    width: 80, height: 80, color: colors[0], number: 1),
                BuildingContainer(
                    width: 100, height: 100, color: colors[1], number: 2),
                BuildingContainer(
                    width: 120, height: 120, color: colors[2], number: 3),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              BuildingContainer(
                  width: 80, height: 80, color: colors[0], number: 1),
              BuildingContainer(
                  width: 100, height: 100, color: colors[1], number: 2),
              BuildingContainer(
                  width: 120, height: 120, color: colors[2], number: 3),
            ]),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
