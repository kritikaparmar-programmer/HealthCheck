import 'package:health_check_app/Resources/RoundedButton.dart';
import 'package:health_check_app/Resources/TextformField.dart';
import 'package:flutter/material.dart';

class Liver extends StatefulWidget {
  @override
  _LiverState createState() => _LiverState();
}

class _LiverState extends State<Liver> {
  final _formKey = GlobalKey<FormState>();

  double age,
      male,
      female,
      total_Bilirubin,
      direct_Bilirubin,
      alkaline_Phosphotase,
      alamine_Aminotransferase,
      aspartate_Aminotransferase,
      total_Protiens,
      albumin, albumin_and_Globulin_Ratio;
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
              if (btnValue == 1) {
                male = 1;
                female = 0;
              } else {
                male = 0;
                female = 1;
              }
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
                                'Liver Disease',
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
                        TextFField(
                          hintText: 'Total Bilirubin',
                          onChanged: (value) {
                            value = total_Bilirubin.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              total_Bilirubin = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Direct Bilirubin',
                          onChanged: (value) {
                            value = direct_Bilirubin.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              direct_Bilirubin = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Alkaline Phosphotase',
                          onChanged: (value) {
                            value = alkaline_Phosphotase.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              alkaline_Phosphotase = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Alamine Aminotransferase',
                          onChanged: (value) {
                            value = alamine_Aminotransferase.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              alamine_Aminotransferase = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Aspartate Aminotransferase',
                          onChanged: (value) {
                            value = aspartate_Aminotransferase.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              aspartate_Aminotransferase = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Total Protiens',
                          onChanged: (value) {
                            value = total_Protiens.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              total_Protiens = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Albumin',
                          onChanged: (value) {
                            value = albumin.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              albumin = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Albumin and Globulin Ratio',
                          onChanged: (value) {
                            value = albumin_and_Globulin_Ratio.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              albumin_and_Globulin_Ratio = double.parse(val);
                            }
                          },
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
