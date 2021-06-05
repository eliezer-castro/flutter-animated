import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _progress = 350;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _progress = _progress == 350 ? 60 : 350;
          });
        },
        child:
            Icon(_progress == 350 ? Icons.arrow_upward : Icons.arrow_downward),
      ),
      body: Stack(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 60.0, end: _progress),
            duration: Duration(milliseconds: 600),
            curve: Curves.elasticInOut,
            builder: (context, double value, child) {
              return Positioned(
                top: value,
                left: 24,
                right: 24,
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
