import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var count = 0;
  var heartColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$count',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 60,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count + 1;
                  });
                },
                child: const Text(
                  'سبح',
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LikedHeartButton(),
              const Text(
                'Like!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 180, 49, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LikedHeartButton extends StatefulWidget {
  const LikedHeartButton({super.key});

  @override
  State<LikedHeartButton> createState() => _LikedHeartButton();
}

class _LikedHeartButton extends State<LikedHeartButton> {
  var heartColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (heartColor == Colors.black) {
            setState(() {
              heartColor = Colors.red;
            });
          } else {
            setState(() {
              heartColor = Colors.black;
            });
          }
        },
        child: Icon(
          Icons.favorite,
          color: heartColor,
          size: 60.0,
        ));
  }
}
