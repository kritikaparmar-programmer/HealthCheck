import 'package:health_check_app/Resources/RoundedButton.dart';
import 'package:health_check_app/Resources/TextformField.dart';
import 'package:flutter/material.dart';

class Diabetes extends StatefulWidget {
  @override
  _DiabetesState createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
  final _formKey = GlobalKey<FormState>();

  double radius_mean,
      texture_mean,
      perimeter_mean,
      area_mean,
      smoothness_mean,
      compactness_mean,
      concavity_mean,
      concave_points_mean,
      symmetry_mean,
      fractal_dimension_mean,
      radius_se,
      texture_se,
      perimeter_se,
      area_se,
      smoothness_se,
      compactness_se,
      concavity_se,
      concave_points_se,
      symmetry_se,
      fractal_dimension_se,
      radius_worst,
      texture_worst,
      perimeter_worst,
      area_worst,
      smoothness_worst,
      compactness_worst,
      concavity_worst,
      concave_points_worst,
      symmetry_worst,
      fractal_dimension_worst;

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
                                'Cancers Disease',
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
                          hintText: 'Radius Mean',
                          onChanged: (value) {
                            value = radius_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              radius_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Texture Mean',
                          onChanged: (value) {
                            value = texture_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              texture_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Perimeter Mean',
                          onChanged: (value) {
                            value = perimeter_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              perimeter_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Area Mean',
                          onChanged: (value) {
                            value = area_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              area_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Smoothness Mean',
                          onChanged: (value) {
                            value = smoothness_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              smoothness_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Compactness Mean',
                          onChanged: (value) {
                            value = compactness_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              compactness_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Concavity Mean',
                          onChanged: (value) {
                            value = concavity_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              concavity_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Concave Points Mean',
                          onChanged: (value) {
                            value = concave_points_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              concave_points_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Symmetry Mean',
                          onChanged: (value) {
                            value = symmetry_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              symmetry_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Fractal Dimension Mean',
                          onChanged: (value) {
                            value = fractal_dimension_mean.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              fractal_dimension_mean = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Radius SE',
                          onChanged: (value) {
                            value = radius_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              radius_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Texture SE',
                          onChanged: (value) {
                            value = texture_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              texture_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Perimeter SE',
                          onChanged: (value) {
                            value = perimeter_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              perimeter_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Area SE',
                          onChanged: (value) {
                            value = area_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              area_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Smoothness SE',
                          onChanged: (value) {
                            value = smoothness_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              smoothness_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Compactness SE',
                          onChanged: (value) {
                            value = compactness_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              compactness_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Concavity SE',
                          onChanged: (value) {
                            value = concavity_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              concavity_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Concave Points SE',
                          onChanged: (value) {
                            value = concave_points_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              concave_points_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Symmetry SE',
                          onChanged: (value) {
                            value = symmetry_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              symmetry_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Fractal Dimension SE',
                          onChanged: (value) {
                            value = fractal_dimension_se.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              fractal_dimension_se = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Radius Worst',
                          onChanged: (value) {
                            value = radius_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              radius_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Texture Worst',
                          onChanged: (value) {
                            value = texture_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              texture_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Perimeter Worst',
                          onChanged: (value) {
                            value = perimeter_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              perimeter_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Area Worst',
                          onChanged: (value) {
                            value = area_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              area_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Smoothness Worst',
                          onChanged: (value) {
                            value = smoothness_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              smoothness_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Compactness Worst',
                          onChanged: (value) {
                            value = compactness_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              compactness_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Concavity Worst',
                          onChanged: (value) {
                            value = concavity_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              concavity_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Concave Points Worst',
                          onChanged: (value) {
                            value = concave_points_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              concave_points_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Symmetry Worst',
                          onChanged: (value) {
                            value = symmetry_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              symmetry_worst = double.parse(val);
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFField(
                          hintText: 'Fractal Dimension Worst',
                          onChanged: (value) {
                            value = fractal_dimension_worst.toString();
                          },
                          validator: (val) {
                            if (val.isEmpty || val == null) {
                              return 'Please enter value';
                            } else {
                              fractal_dimension_worst = double.parse(val);
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
