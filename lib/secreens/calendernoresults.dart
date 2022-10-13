import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CalenderNoResults extends StatefulWidget {
  const CalenderNoResults({Key? key}) : super(key: key);

  @override
  State<CalenderNoResults> createState() => _CalenderNoResultsState();
}

class _CalenderNoResultsState extends State<CalenderNoResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: SpeedDial(
          // animatedIcon: AnimatedIcons.menu_close,
          icon: Icons.add,
          backgroundColor: Color(0xff09C2B5),

          children: [
            SpeedDialChild(
              backgroundColor: Color(0xff09C2B5),
              child: Icon(Icons.add_task,color: Colors.white,),
              label: 'Task',
              labelStyle: TextStyle(color: Colors.white),
              labelBackgroundColor: Color(0xff09C2B5),
            ),
            SpeedDialChild(
              backgroundColor: Color(0xff09C2B5),
              child: Icon(Icons.dashboard,color: Colors.white,),
              label: 'Space',
              labelStyle: TextStyle(color: Colors.white),
              labelBackgroundColor: Color(0xff09C2B5),
            ),
          ],
        ),

      backgroundColor: Color(0xffE7F5F4),
      appBar: AppBar(
        toolbarHeight: 102,
        title: Text('Calendar',style: TextStyle(color: Color(0xff1C2760)),),
        elevation: 0,
        backgroundColor: Color(0xffE7F5F4),
      ),
      body: Column(
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now(),
            onDateChanged: (value){},
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:  Radius.circular(32),topRight: Radius.circular(32)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Text('Today',style: TextStyle(fontSize: 18,color: Color(0xff1C2760),fontWeight: FontWeight.w700),),
               Container(
                 height: 220,
                 child: Center(child: Text('There is No Task',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff1C2760)),)),

               )

              ],
            ),
          )
        ],
      ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: BottomNavigationBar(
              currentIndex: 3,
              fixedColor: Color(0xff09C2B5),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color:Color(0xff9098B1)), label: "Home",),
                BottomNavigationBarItem(icon: Icon(Icons.dashboard,color:Color(0xff9098B1)), label: "Spaces",),
                BottomNavigationBarItem(icon: Icon(Icons.list_alt,color:Color(0xff9098B1)), label: "Habit"),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month,color:Color(0xff09C2B5)), label: "Calendar"),
                BottomNavigationBarItem(icon: Icon(Icons.logout,color:Color(0xff9098B1)), label: "Sign out"),
              ],
              type: BottomNavigationBarType.fixed,
            ),
          ),
        )


    );
  }
}
