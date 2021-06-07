import 'package:flutter/material.dart';
import './all.dart';
import './livingRoom.dart';
import './bedroom.dart';
import './deviceImage.dart';
import './toggleButton.dart';
import './deviceTitle.dart';
import './deviceSwitch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD Assignment 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MAD Assignment 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  String tvOff = 'assets/closed-tv.png';
  String tvOn = 'assets/opened-tv.png';

  String radioOff = 'assets/radio-off.png';
  String radioOn = 'assets/radio-on.png';

  String aircondOff = 'assets/aircond-off.png';
  String aircondOn = 'assets/aircond-on.png';

  String doorClose = 'assets/closed-door.png';
  String doorOpen = 'assets/opened-door.png';

  String lightOff = 'assets/turned-off.png';
  String lightOn = 'assets/turned-on.png';

  String windowClose = 'assets/closed-window.png';
  String windowOpen = 'assets/opened-window.png';

  int toggle1 = 0;
  int toggle2 = 0;
  int toggle3 = 0;
  int toggle4 = 0;
  int toggle5 = 0;
  int toggle6 = 0;

  void _toggle(int toggle){

    setState(() {

      if(toggle == 1){

        if(toggle1 == 0){
          toggle1 = 1;
        }

        else if(toggle1 == 1){
          toggle1 = 0;
        }

      }

      else if(toggle == 2){

        if(toggle2 == 0){
          toggle2 = 1;
        }

        else if(toggle2 == 1){
          toggle2 = 0;
        }

      }

      else if(toggle == 3){

        if(toggle3 == 0){
          toggle3 = 1;
        }

        else if(toggle3 == 1){
          toggle3 = 0;
        }

      }

      else if(toggle == 4){

        if(toggle4 == 0){
          toggle4 = 1;
        }

        else if(toggle4 == 1){
          toggle4 = 0;
        }

      }

      else if(toggle == 5){

        if(toggle5 == 0){
          toggle5 = 1;
        }

        else if(toggle5 == 1){
          toggle5 = 0;
        }

      }

      else if(toggle == 6){

        if(toggle6 == 0){
          toggle6 = 1;
        }

        else if(toggle6 == 1){
          toggle6 = 0;
        }

      }

    });
    
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "All"),
                Tab(text: "Living Room"),
                Tab(text: "Bedroom"),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              All(

                // device 1
                DeviceImage(
                  toggle1 == 0 ?
                    tvOff
                    :
                    tvOn
                  ), 
                ToggleButton(() => _toggle(1)), 
                DeviceTitle('TV'), 
                toggle1 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 2
                DeviceImage(
                  toggle2 == 0 ?
                    radioOff
                    :
                    radioOn
                  ),
                ToggleButton(() => _toggle(2)), 
                DeviceTitle("Bedroom Radio"),

                  toggle2 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 3
                DeviceImage(
                  toggle3 == 0 ?
                    aircondOff
                    :
                    aircondOn
                  ),
                ToggleButton(() => _toggle(3)), 
                DeviceTitle('Air Cond'),

                  toggle3 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 4
                DeviceImage(
                  toggle4 == 0 ?
                    doorClose
                    :
                    doorOpen
                  ),
                ToggleButton(() => _toggle(4)), 
                DeviceTitle('Open Smart Door'),

                  toggle4 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 5
                DeviceImage(
                  toggle5 == 0 ?
                    lightOff
                    :
                    lightOn
                  ),
                ToggleButton(() => _toggle(5)), 
                DeviceTitle("Bedroom Light"),

                  toggle5 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 6
                DeviceImage(
                  toggle6 == 0 ?
                    windowClose
                    :
                    windowOpen
                  ),
                ToggleButton(() => _toggle(6)), 
                DeviceTitle('Open Smart Window'),

                  toggle6 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),
              ),

              LivingRoom(

                // device 1
                DeviceImage(
                  toggle1 == 0 ?
                    tvOff
                    :
                    tvOn
                  ),
                ToggleButton(() => _toggle(1)), 
                DeviceTitle('TV'), 
                toggle1 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 2
                DeviceImage(
                  toggle3 == 0 ?
                    aircondOff
                    :
                    aircondOn
                  ),
                ToggleButton(() => _toggle(3)), 
                DeviceTitle('Air Cond'),

                  toggle3 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 3
                DeviceImage(
                  toggle4 == 0 ?
                    doorClose
                    :
                    doorOpen
                  ), 
                ToggleButton(() => _toggle(4)), 
                DeviceTitle('Open Smart Door'),

                  toggle4 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 4
                DeviceImage(
                  toggle6 == 0 ?
                    windowClose
                    :
                    windowOpen
                  ),
                ToggleButton(() => _toggle(6)), 
                DeviceTitle('Open Smart Window'),

                  toggle6 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),
              ),

              Bedroom(

                // device 1
                DeviceImage(
                  toggle2 == 0 ?
                    radioOff
                    :
                    radioOn
                  ),
                ToggleButton(() => _toggle(2)), 
                DeviceTitle("Bedroom Radio"),

                  toggle2 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),

                // device 2
                DeviceImage(
                  toggle5 == 0 ?
                    lightOff
                    :
                    lightOn
                  ),
                ToggleButton(() => _toggle(5)), 
                DeviceTitle("Bedroom Light"),

                  toggle5 == 0 ?

                    DeviceSwitch('Off')

                    :

                    DeviceSwitch('On'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}