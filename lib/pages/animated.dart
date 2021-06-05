import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _top = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: ElevatedButton(
                child: Text('Animar'),
                onPressed: () {
                  setState(() {
                    _top = _top == 20 ? 80 : 20;
                  });
                },
              )),
          SafeArea(
            child: AnimatedPadding(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOutBack,
              padding: EdgeInsets.only(top: _top, bottom: 20),
              child: AnimatedAlign(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOutBack,
                alignment: Alignment.topCenter,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutBack,
                  opacity: 1,
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutBack,
                    height: 150,
                    width: 300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
