import 'package:flutter/material.dart';


class Bedroom extends StatelessWidget{

  final StatelessWidget deviceIcon1;
  final StatelessWidget powerButton1;
  final StatelessWidget deviceTitle1;
  final StatelessWidget deviceSwitch1;

  final StatelessWidget deviceIcon2;
  final StatelessWidget powerButton2;
  final StatelessWidget deviceTitle2;
  final StatelessWidget deviceSwitch2;

  Bedroom(

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
            ],
        )
      ),

    );
    
  }
}