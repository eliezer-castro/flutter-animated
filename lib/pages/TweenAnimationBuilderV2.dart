import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _rotate = 6.23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _rotate = _rotate == 3.13 ? 6.26 : 3.13;
          });
        },
        child: Icon(Icons.refresh),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: _rotate),
              duration: Duration(milliseconds: 600),
              curve: Curves.elasticInOut,
              builder: (context, double value, child) {
                return Transform.rotate(
                  angle: value,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
