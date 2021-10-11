import 'package:health_check_app/Resources/RoundedButton.dart';
import 'package:health_check_app/Resources/TextformField.dart';
import 'package:flutter/material.dart';

class HeartAttack extends StatefulWidget {
  @override
  _HeartAttackState createState() => _HeartAttackState();
}

class _HeartAttackState extends State<HeartAttack> {
  final _formKey = GlobalKey<FormState>();

  double age, trestbps, chol, thalach, oldpeak, slope;
  String select;

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: btnValue,
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
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
                                'Heart Attack',
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
                        Text(
                          'Gender',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(1, "Male"),
                            addRadioButton(0, "Female"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Chest Pain Type',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(0, "0"),
                            addRadioButton(1, "1"),
                            addRadioButton(2, "2"),
                            addRadioButton(3, "3"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Resting Blood Pressure',
                          onChanged: (value) {
                            value = trestbps.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              trestbps = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Serum Cholestoral (mg/dl)',
                          onChanged: (value) {
                            value = chol.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              chol = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Fasting Blood Sugar',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(1, ">120 mg/dl"),
                            addRadioButton(0, "<120 mg/dl"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Resting Electrocardiographic Results',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(0, "0"),
                            addRadioButton(1, "1"),
                            addRadioButton(2, "2"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Maximum Heart Rate Achieved',
                          onChanged: (value) {
                            value = thalach.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              thalach = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Exercise Induced Angina',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(1, "1"),
                            addRadioButton(0, "0"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'ST Depression Induced by Exercise',
                          onChanged: (value) {
                            value = oldpeak.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              oldpeak = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: ' Slope of the Peak Exercise ST Segment',
                          onChanged: (value) {
                            value = slope.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              slope = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Number of Major Vessels',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(0, "0"),
                            addRadioButton(1, "1"),
                            addRadioButton(2, "2"),
                            addRadioButton(3, "3"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Thal',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Wrap(
                          children: [
                            addRadioButton(0, "Normal"),
                            addRadioButton(1, "Fixed Defect"),
                            addRadioButton(2, "Reversable Defect"),
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
