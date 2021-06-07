import 'package:flutter/material.dart';


class All extends StatelessWidget{

  final StatelessWidget deviceIcon1;
  final StatelessWidget powerButton1;
  final StatelessWidget deviceTitle1;
  final StatelessWidget deviceSwitch1;

  final StatelessWidget deviceIcon2;
  final StatelessWidget powerButton2;
  final StatelessWidget deviceTitle2;
  final StatelessWidget deviceSwitch2;

  final StatelessWidget deviceIcon3;
  final StatelessWidget powerButton3;
  final StatelessWidget deviceTitle3;
  final StatelessWidget deviceSwitch3;

  final StatelessWidget deviceIcon4;
  final StatelessWidget powerButton4;
  final StatelessWidget deviceTitle4;
  final StatelessWidget deviceSwitch4;

  final StatelessWidget deviceIcon5;
  final StatelessWidget powerButton5;
  final StatelessWidget deviceTitle5;
  final StatelessWidget deviceSwitch5;

  final StatelessWidget deviceIcon6;
  final StatelessWidget powerButton6;
  final StatelessWidget deviceTitle6;
  final StatelessWidget deviceSwitch6;

  All(

    // device 1
    this.deviceIcon1, 
    this.powerButton1, 
    this.deviceTitle1, 
    this.deviceSwitch1,

    
    // device 2
    this.deviceIcon2, 
    this.powerButton2, 
    this.deviceTitle2, 
    this.deviceSwitch2,

    // device 3
    this.deviceIcon3, 
    this.powerButton3, 
    this.deviceTitle3, 
    this.deviceSwitch3,

    // device 4
    this.deviceIcon4, 
    this.powerButton4, 
    this.deviceTitle4, 
    this.deviceSwitch4,

    // device 4
    this.deviceIcon5, 
    this.powerButton5, 
    this.deviceTitle5, 
    this.deviceSwitch5,
    
    // device 6
    this.deviceIcon6, 
    this.powerButton6, 
    this.deviceTitle6, 
    this.deviceSwitch6
    
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      backgroundColor: Colors.grey[200],

      body: Center(
        child: 
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[

              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                
                  children: [
                    Row(
                      children: <Widget>[
                        
                        deviceIcon1,

                        powerButton1,
                      ],
                    ),

                    deviceTitle1,

                    deviceSwitch1,
                  ],
                ),
                color: Colors.white,
              ),

              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        
                        deviceIcon2,
                                
                        powerButton2,

                      ],
                    ),

                    deviceTitle2,

                    deviceSwitch2,

                  ],
                ),
                color: Colors.white,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        
                        deviceIcon3,

                        powerButton3,
                      ],
                    ),

                    deviceTitle3,

                    deviceSwitch3,
                  ],
                ),
                color: Colors.white,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        
                        deviceIcon4,

                        powerButton4,

                      ],
                    ),

                    deviceTitle4,

                    deviceSwitch4,
                  ],
                ),
                color: Colors.white,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        
                        deviceIcon5,

                        powerButton5,
                      ],
                    ),

                    deviceTitle5,

                    deviceSwitch5,
                  ],
                ),
                color: Colors.white,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        
                        deviceIcon6,

                        powerButton6,
                      ],
                    ),

                    deviceTitle6,

                    deviceSwitch6,
                  ],
                ),
                color: Colors.white,
              ),
            ],
        )
      ),

    );
    
  }
}