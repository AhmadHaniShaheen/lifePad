import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
class TaskListNotActive extends StatefulWidget {
  const TaskListNotActive({Key? key}) : super(key: key);

  @override
  State<TaskListNotActive> createState() => _TaskListNotActiveState();
}

class _TaskListNotActiveState extends State<TaskListNotActive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff000000),)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Task',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff1C2760),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Color(0xff9098B1),
            size: 24,
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Icons.notifications_outlined,
            color: Color(0xff9098B1),
            size: 24,
          ),
          SizedBox(
            width: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image(
              image: AssetImage('images/profileimg.png'),
              width: 26,
              height: 26,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 125,
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff09C2B5)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: DropdownButton(
                        hint: Text('Stady'),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 45.0),
                          child: Icon(Icons.arrow_drop_down),
                        ),
                        underline: SizedBox(),
                        items: [
                          DropdownMenuItem(
                            child: Text('Home'),
                            value: 'H',
                          ),
                          DropdownMenuItem(
                            child: Text('Sport'),
                            value: 'S',
                          ),
                          DropdownMenuItem(
                            child: Text('Sleep'),
                            value: 'Sl',
                          ),
                        ],
                        onChanged: (value) {}),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      child: Text(
                        '7',
                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 18,
                      backgroundColor: Color(0xff09C2B5),
                    ),
                    CircleAvatar(
                      radius: 24,
                      child: Center(
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.add))),
                      backgroundColor: Color(0xffE7F5F4),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.expand_more)),
                        Text(
                          'Sport',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff1C2760),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(2)',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff9098B1),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Color(0xff9098B1),
                        )),
                  ],
                ),
                Divider(
                  color: Color(0xff9098B1),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:32),
                      child: Text(
                        'Prepar for English exam',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Color(0xff1C2760),
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Color(0xff9098B1),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:32),
                      child: Text(
                        'Go for shopining',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Color(0xff1C2760),
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Color(0xff9098B1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_forward_ios,size: 18,)),
                        Text(
                          'Home',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff1C2760),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(2)',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff9098B1),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Color(0xff9098B1),
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: BottomNavigationBar(
            currentIndex: 1,
            fixedColor: Color(0xff09C2B5),
            items: [
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/home');
              }, icon: Icon(Icons.home_outlined,color:Color(0xff9098B1))), label: "Home",),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/spacelist');

              }, icon: Icon(Icons.dashboard,color:Color(0xff09C2B5))), label:  "Spaces",),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/habitsecreen');

              }, icon: Icon(Icons.list_alt,color:Color(0xff9098B1))), label: "Habit"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.pushNamed(context, '/forcalendar');

              }, icon: Icon(Icons.calendar_month,color:Color(0xff9098B1))), label: "Calendar"),
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
