import 'package:flutter/material.dart';

class AllContainers extends StatelessWidget {
  const AllContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _customBorders(),
        _borderRadius(),
        _customBorderRadius(),
        _gradient(),
        _boxShadow()
      ],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff4a86de),
        ),
        height: 150.0,
      ),
    );
  }

  _borders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: const Color(0xff174a97),
          border: Border.all(color: const Color(0xff06263b), width: 4.0),
        ),
      ),
    );
  }

  _customBorders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: const Color(0xff091e3d),
          border: Border(
            top: BorderSide(
              color: Color(0xff669bd7),
              width: 4.0,
            ),
            bottom: BorderSide(
              color: Color(0xff669bd7),
              width: 4.0,
            ),
          ),
        ),
      ),
    );
  }

  _borderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Color(0xff1161db),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
      ),
    );
  }

  _customBorderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: Color(0xff2a5587),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ))),
    );
  }

  _gradient() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Color(0xff061a3f),
                Color(0xff123474),
                Color(0xff2e5fba)
              ]))),
    );
  }

  _boxShadow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xff345698),
            borderRadius: BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff202020)!.withOpacity(0.29),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                  spreadRadius: 10)
            ],
            image:
                const DecorationImage(image: AssetImage("assets/fondo.jpg"))),
      ),
    );
  }
}
