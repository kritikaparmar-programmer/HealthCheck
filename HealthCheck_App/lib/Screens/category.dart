import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetFloat1;
  Animation<Offset> _offsetFloat2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _offsetFloat1 = Tween<Offset>(begin: Offset(2.0, 0.0), end: Offset.zero)
        .animate(_controller);

    _offsetFloat1.addListener(() {
      setState(() {});
    });

    _offsetFloat2 = Tween<Offset>(begin: Offset(-2.0, 0.0), end: Offset.zero)
        .animate(_controller);

    _offsetFloat2.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget catrgorySection(String image) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
              color: Colors.pinkAccent,
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(2, 2))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Row(
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color:Colors.yellow[900],
                  //   ),
                  //   child: IconButton(
                  //     icon: Icon(Icons.lightbulb),
                  //     iconSize: 30.0,
                  //     onPressed: (){},
                  //   ),
                  // ),
                  Spacer(),
                   Container(
                     decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:Colors.yellow[900],
                    ),
                     child: IconButton(
                       icon: Icon(Icons.settings),
                       iconSize: 30.0,
                       onPressed: (){
                         Navigator.pushNamed(context,'/settings');
                       },
                     ),
                   ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Health Check',
                    style: TextStyle(fontSize: 35.0, fontFamily: 'Langar'),
                  ),
                ])),
            SlideTransition(
              position: _offsetFloat1,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 80.0, right: 10.0, left: 70.0, bottom: 20.0),
                    child: catrgorySection('assets/images/user.png')),
              ),
            ),
            SlideTransition(
              position: _offsetFloat2,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 70.0, left: 10.0, bottom: 20.0),
                    child: catrgorySection('assets/images/doctor.jpg')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
