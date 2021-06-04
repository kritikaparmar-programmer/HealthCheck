import 'package:flutter/material.dart';

class UserDiseaseSelect extends StatefulWidget {
  @override
  _UserDiseaseSelectState createState() => _UserDiseaseSelectState();
}

class _UserDiseaseSelectState extends State<UserDiseaseSelect> with TickerProviderStateMixin {
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

  // Stroke, liver, heart, diabetes, cancer, malaria, fetal_health

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
                onTap: () {
                  Navigator.pushNamed(context, '/heart');
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 80.0, right: 10.0, left: 70.0, bottom: 20.0),
                    child: CategoriesLayout( categoryName: 'Heart Disease', imageUrl:'assets/images/heart.jpg'),
              ),
            ),),
            SlideTransition(
              position: _offsetFloat2,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/cancer');
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 70.0, left: 10.0, bottom: 20.0),
                    child: CategoriesLayout(categoryName:'Cancer', imageUrl:'assets/images/cancer.jpg')
                    )
                    ),
              ),
              SlideTransition(
              position: _offsetFloat1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/diabetes');
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                         top: 20.0, right: 10.0, left: 70.0, bottom: 20.0),
                    child: CategoriesLayout(categoryName:'Diabetes', imageUrl:'assets/images/diabetes.jpg')
                    )
                    ),
              ),
              SlideTransition(
              position: _offsetFloat2,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/liver');
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 70.0, left: 10.0, bottom: 20.0),
                    child: CategoriesLayout(categoryName:'Liver Disease', imageUrl:'assets/images/liver.jpg')
                    )
                    ),
              ),
              SlideTransition(
              position: _offsetFloat1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/stroke');
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 10.0, left: 70.0, bottom: 20.0),
                    child: CategoriesLayout(categoryName:'Stroke Disease', imageUrl:'assets/images/stroke.jpg')
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
                    child: CategoriesLayout(categoryName:'Fetal Health', imageUrl:'assets/images/fetal.jpg')
                    )
                    ),
              )
          ] 
          
        ),
      ),
    );
  }
}

//-------------------- Category Class ---------------------------//
class CategoriesLayout extends StatelessWidget {
  final String imageUrl;
  final String categoryName;

  CategoriesLayout({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColor,
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(2, 2))
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.6),
            ),
            child: Text(
              categoryName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 35,
                letterSpacing: 1,
                fontFamily: 'Langar',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
