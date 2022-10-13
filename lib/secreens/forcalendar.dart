import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ForCalendar extends StatefulWidget {
  const ForCalendar({Key? key}) : super(key: key);

  @override
  State<ForCalendar> createState() => _ForCalendarState();
}

class _ForCalendarState extends State<ForCalendar> {
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
            child: IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/createtask');
            }, icon: Icon(Icons.add_task,color: Colors.white,)),
            label: 'Task',
            labelStyle: TextStyle(color: Colors.white),
            labelBackgroundColor: Color(0xff09C2B5),
          ),
          SpeedDialChild(
            backgroundColor: Color(0xff09C2B5),
            child: IconButton(onPressed: (){
              showButtomSheet();
            }, icon: Icon(Icons.dashboard,color: Colors.white,)),            label: 'Space',
            labelStyle: TextStyle(color: Colors.white),
            labelBackgroundColor: Color(0xff09C2B5),
          ),
        ],
      ),
        backgroundColor: Color(0xffE7F5F4),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff000000),
              )),
          toolbarHeight: 102,
          title: Text(
            'Calendar',
            style: TextStyle(color: Color(0xff1C2760)),
          ),
          elevation: 0,
          backgroundColor: Color(0xffE7F5F4),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now(),
                onDateChanged: (value) {},
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff1C2760),
                          fontWeight: FontWeight.w700),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff09C26C),
                          radius: 10,
                        ),
                      ),
                      title: Text(
                        'Flutter Project -screen20 ',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text('8:00 am -9:30 am'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffEDF25B),
                          radius: 10,
                        ),
                      ),
                      title: Text(
                        'Flutter Project -screen20 ',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text('8:00 am -9:30 am'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffC21609),
                          radius: 10,
                        ),
                      ),
                      title: Text(
                        'Flutter Project -screen20 ',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text('8:00 am -9:30 am'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: BottomNavigationBar(
            currentIndex: 3,
            fixedColor: Color(0xff09C2B5),
            items: [
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/home');
              }, icon: Icon(Icons.home_outlined,color:Color(0xff9098B1))), label: "Home",),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/spacelist');

              }, icon: Icon(Icons.dashboard,color:Color(0xff9098B1))), label:  "Spaces",),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/habitsecreen');

              }, icon: Icon(Icons.list_alt,color:Color(0xff9098B1))), label: "Habit"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/forcalendar');
              }, icon: Icon(Icons.calendar_month,color:Color(0xff09C2B5))), label: "Calendar"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                showAlertDialog();

              },icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.logout,color:Color(0xff9098B1)),
              )), label: "Sign out"),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
  void showAlertDialog(){
    showDialog(context: context, builder: (context){
      return Center(
        child: AlertDialog(
          title: Text('Sign Out'),
          content: Text('Are you sure do you wont to sign out'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancel')),
            TextButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/loginsecreen');
            }, child: Text('sure')),
          ],
        ),
      );
    });
  }

  void showButtomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:  Radius.circular(32),topRight: Radius.circular(32)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Creat new Space',style: TextStyle(fontSize: 14,color: Color(0xff1C2760),fontWeight: FontWeight.w700),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,right: 20),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xff09C2B5),
                    ),
                  ),
                  Flexible(child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Work Space Name',
                        hintStyle: TextStyle(color: Color(0xff9098B1),fontSize: 12),
                      ),
                    ),
                  )),
                  Container(
                      margin: EdgeInsets.only(top: 20,right: 20),
                      child: Icon(Icons.add,color: Color(0xff1C2760),))
                ],
              ),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      );
    });
  }

}
