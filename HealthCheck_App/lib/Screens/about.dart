import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: ListView(
              children: [
                // Image.asset('images/logo.png', width: 200, height: 200,),
  //------------------------------------TITLE-------------------------------//
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Health Check',
                      style:TextStyle(
                        fontSize: 30.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Langar'
                      ),
                    ),
                  ],
                ),

  //--------------------------------------Version------------------------------//
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VERSION: 0.0.1',
                      style:TextStyle(
                        fontSize: 15.0,
                      ),
                      ),
                  ],
                ),

  //-----------------------------------Copyright----------------------------------//
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\u00a9 2021, Kritika Parmar",
                      style:TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    thickness: 2.0,
                    indent: 4.0
                  ),
                ),
  //-------------------------------------- Short Description ----------------------------//
                Padding(
                  padding: const EdgeInsets.only(top:10.0, left: 20.0, right: 20.0),
                  child: Text(
                    "This is a Machine Learning Web Application which can predict three diaseases i.e. Diabetes, "
                    "Heart disease and Cancer. The datasets have been taken from Kaggle. And overall analysis and "
                    "model building for the diseases have been done in respective Jupyter Notebooks.",
                    style:TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}