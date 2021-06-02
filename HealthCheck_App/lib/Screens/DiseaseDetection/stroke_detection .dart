import 'package:health_check_app/Resources/RoundedButton.dart';
import 'package:health_check_app/Resources/TextformField.dart';
import 'package:flutter/material.dart';

class Stroke extends StatefulWidget {
  @override
  _StrokeState createState() => _StrokeState();
}

class _StrokeState extends State<Stroke> {
  final _formKey = GlobalKey<FormState>();

  String select;
  double age, glucose, bmi;

  Row addRadioButton(int btnValue, String title) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Radio(
      activeColor: Theme.of(context).primaryColor,
      value: btnValue,
      groupValue: select,
      onChanged: (value){
        setState(() {
          print(value);
          select=value;
        });
      },
    ),
    Text(title)
  ],
);
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Strokes Disease',
                                style: TextStyle(
                                    fontSize: 35.0, fontFamily: 'Langar'),
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Detection',
                                style: TextStyle(
                                    fontSize: 35.0, fontFamily: 'Langar'),
                              ),
                            ]),
                      ],
                    )),
                SizedBox(
                  height: 20,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.8,
                  ),
                  width: 350,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Enter the following details',
                                style: TextStyle(
                                    fontSize: 20.0, fontFamily: 'Langar')),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Gender', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(1,"Male"),
                            addRadioButton(0,"Female"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Enter your Age', style: TextStyle(fontSize: 20.0),),
                        TextFField(
                          hintText: 'Age',
                          onChanged: (value) {
                            value = age.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              age = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Hypertension', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(1,"Yes"),
                            addRadioButton(0,"No"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Previous Heart Disease', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(1,"Yes"),
                            addRadioButton(0,"No"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Married', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(1,"Yes"),
                            addRadioButton(0,"No"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Work Type', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(0,"Govt. job"),
                            addRadioButton(1,"Never worked"),
                            addRadioButton(2,"Private"),
                            addRadioButton(3,"Self-employed"),
                            addRadioButton(4,"Children"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Resident Type', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(1,"Urban"),
                            addRadioButton(0,"Rural"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Glucose Level:', style: TextStyle(fontSize: 20.0),),
                        TextFField(
                          hintText: 'glucose',
                          onChanged: (value) {
                            value = glucose.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              glucose = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Enter your BMI', style: TextStyle(fontSize: 20.0),),
                        TextFField(
                          hintText: 'Age',
                          onChanged: (value) {
                            value = bmi.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              bmi = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Smoking Status', style: TextStyle(fontSize: 20.0),),
                        Wrap(
                          children: [
                            addRadioButton(0,"Unknown"),
                            addRadioButton(1,"Formerly Smoked"),
                            addRadioButton(2,"Never Smoked"),
                            addRadioButton(3,"Smokes"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                          color: Colors.orangeAccent,
                          text: 'Submit',
                          press: () {
                            if (_formKey.currentState.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Processing Data')));
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
