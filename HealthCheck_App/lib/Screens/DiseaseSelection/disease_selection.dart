import 'package:flutter/material.dart';

class DiseaseSelect extends StatefulWidget {
  @override
  _DiseaseSelectState createState() => _DiseaseSelectState();
}

class _DiseaseSelectState extends State<DiseaseSelect> with TickerProviderStateMixin {
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

  Widget catrgorySection(String text,Color color,String image) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
              text,
              style: TextStyle(fontSize: 23.0, fontFamily: 'Langar'),
        ),
        ],),
      ),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
       image: DecorationImage(image: AssetImage(image)),
        boxShadow: [
          BoxShadow(
              color: color,
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
                  
                  Spacer(),
                   
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Select disease',
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
                    child: catrgorySection('* Heart Disease',Colors.pinkAccent,'assets/images/heart.jpg'),
              ),
            ),),
            SlideTransition(
              position: _offsetFloat2,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 70.0, left: 10.0, bottom: 20.0),
                    child: catrgorySection('* Cancer',Colors.redAccent,'assets/images/cancer.jpg')
                    )
                    ),
              ),
              SlideTransition(
              position: _offsetFloat1,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(
                         top: 20.0, right: 10.0, left: 70.0, bottom: 20.0),
                    child: catrgorySection('* Diabetes',Colors.orangeAccent,'assets/images/diabetes.jpg')
                    )
                    ),
              ),
              SlideTransition(
              position: _offsetFloat2,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 70.0, left: 10.0, bottom: 20.0),
                    child: catrgorySection('* Liver Disease',Colors.greenAccent,'assets/images/liver.jpg')
                    )
                    ),
              ),
              SlideTransition(
              position: _offsetFloat1,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(
                       top: 20.0, right: 10.0, left: 70.0, bottom: 20.0),
                    child: catrgorySection('* Parkinsons Disease',Colors.blueAccent,'assets/images/parkin.jpg')
                    )
                    ),
              ),
          ] 
          
        ),
      ),
    );
  }
}
