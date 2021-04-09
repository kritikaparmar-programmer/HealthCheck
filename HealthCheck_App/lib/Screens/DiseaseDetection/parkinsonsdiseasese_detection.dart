import 'dart:ffi';
import 'package:HealthCheck_App/Constants/RoundedButton.dart';
import 'package:HealthCheck_App/Constants/TextformField.dart';
import 'package:flutter/material.dart';


class ParkinsonsDiseaseDetect extends StatefulWidget {

  @override
  _ParkinsonsDiseaseDetectState createState() => _ParkinsonsDiseaseDetectState();
}

class _ParkinsonsDiseaseDetectState extends State<ParkinsonsDiseaseDetect> {
final _formKey = GlobalKey<FormState>();

Double _mdvpfo ;
Double _mdvpfhi;
Double _mdvpflo ;
Double _mdvpjitter;
Double _mdvprap ;
Double _mdvppq ;
Double _jitterddp ;
Double _mdvpshimmer ;
Double _mdvpshinnerdb ;
Double _shimmerapq3 ;
Double _shimmerapq5 ;
Double _mdvpapq ;
Double _shimmerdda ;
Double _nhr ;
Double _hnr ;
Double _rpde ;
Double _dfa ;
Double _spread1 ;
Double _spread2 ;
Double _d2 ;
Double _ppe ;



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
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  child:
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                          'Parkinsons Disease',
                          style: TextStyle(fontSize: 35.0, fontFamily: 'Langar'),
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                          '   Detection',
                          style: TextStyle(fontSize: 35.0, fontFamily: 'Langar'),
                    ),
                  ]),

                        ],
                      )),
                  SizedBox(height: 20,child:Divider(color: Colors.white,thickness: 0.8,),width: 350,),
                  Padding(
                     padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Enter the following details',style: TextStyle(fontSize: 20.0, fontFamily: 'Langar')),
                            ],
                          ),
                          SizedBox(height: 25,),
                          TextFField(
                            hintText: 'MDVP:Fo(Hz)', 
                            onChanged: (value){
                                value = _mdvpfo.toString();
                            }, 
                            validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                           
                          ),
                          TextFField(
                                hintText: 'MDVP:Fhi(Hz)', 
                                onChanged: (value){
                                  value = _mdvpfhi.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              TextFField(
                                hintText: 'MDVP:Flo(Hz)',
                                onChanged: (value){
                                  value = _mdvpflo.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                             
                              ),                            
                              TextFField(
                                hintText: 'MDVP:Jitter(Abs)',
                                onChanged: (value){
                                  value = _mdvpjitter.toString();
                                },
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                              
                              ),
                              TextFField(
                                hintText: 'MDVP:RAP',    
                                onChanged: (value){
                                  value = _mdvprap.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                         
                              ),
                              TextFField(
                                hintText: 'MDVP:PPQ',         
                                onChanged: (value){
                                  value = _mdvppq.toString();
                                },
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                     
                              ),
                              TextFField(
                                hintText: 'Jitter:DDP',  
                                onChanged: (value){
                                  value = _jitterddp.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                           
                              ),
                              TextFField(
                                hintText: 'MDVP:Shimmer',       
                                onChanged: (value){
                                  value = _mdvpshimmer.toString();                                 
                                },
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                       
                              ),
                              TextFField(
                                hintText: 'MDVP:Shimmer(dB)',  
                                onChanged: (value){
                                  value = _mdvpshinnerdb.toString();
                                },
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              TextFField(
                                hintText: 'Shimmer:APQ3',
                                onChanged: (value){
                                  value = _shimmerapq3.toString();
                                },
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                              
                              ),
                              TextFField(
                                hintText: 'Shimmer:APQ5',
                                onChanged: (value){
                                  value = _shimmerapq5.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                             
                              ),
                              TextFField(
                                hintText: 'MDVP:APQ', 
                                onChanged: (value){
                                  value = _mdvpapq.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              TextFField(
                                hintText: 'Shimmer:DDA',
                                onChanged: (value){
                                  value = _shimmerdda.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                             
                              ),
                              TextFField(
                                hintText: 'NHR',
                                onChanged: (value){
                                  value = _nhr.toString();
                                },
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                              
                              ),
                              TextFField(
                                hintText: 'HNR',
                                onChanged: (value){
                                  value = _hnr.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                             
                              ),
                              TextFField(
                                hintText: 'RPDE', 
                                onChanged: (value){
                                  value = _rpde.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              TextFField(
                                hintText: 'DFA', 
                                onChanged: (value){
                                  value = _dfa.toString();
                                },  
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                           
                              ),
                              TextFField(
                                hintText: 'spread1', 
                                onChanged: (value){
                                  value = _spread1.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              TextFField(
                                hintText: 'spread2', 
                                onChanged: (value){
                                  value = _spread2.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              TextFField(
                                hintText: 'D2',               
                                onChanged: (value){
                                  value = _d2.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },              
                              ),
                              TextFField(
                                hintText: 'PPE', 
                                onChanged: (value){
                                  value = _ppe.toString();
                                }, 
                                validator: (val){
                              if(val.isEmpty || val == null){
                                return 'Please enter value';
                              }
                            },                            
                              ),
                              SizedBox(height: 20,),
                              RoundedButton(
                                color: Colors.orangeAccent,
                                text: 'Submit',
                                press: (){
                                  if(_formKey.currentState.validate()){
                                    ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
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