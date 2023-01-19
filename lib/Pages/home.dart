import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Work 5',
          ),
          backgroundColor: Colors.brown,
        ),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
              SizedBox(
                height: 150,
              ),
              Text(
                "عدد التسبيح",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
              CountNumber(),
              SizedBox(
                height: 50,
              ),
              LikeButton()
            ])));
  }
}

class CountNumber extends StatefulWidget {
  const CountNumber();

  @override
  State<CountNumber> createState() => _CountNumberState();
}

class _CountNumberState extends State<CountNumber> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "$count",
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
        textAlign: TextAlign.center,
      ),
      InkWell(
          onTap: () {
            setState(() {
              count = count + 1;
              print(count);
            });
          },
          child: const Text(
            "سبّح",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ))
    ]);
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton();

  @override
  State<LikeButton> createState() => _LikeButton();
}

class _LikeButton extends State<LikeButton> {
  var likeColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
          onTap: () {
            setState(() {
              print("object");
              if (likeColor == Colors.red) {
                likeColor = Colors.black;
              } else {
                likeColor = Colors.red;
              }
            });
          },
          child: Icon(
            Icons.favorite,
            color: likeColor,
            size: 60,
          ))
    ]);
  }
}
