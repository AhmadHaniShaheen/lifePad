import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatHabit extends StatefulWidget {
  const CreatHabit({Key? key}) : super(key: key);

  @override
  State<CreatHabit> createState() => _CreatHabitState();
}

class _CreatHabitState extends State<CreatHabit> {
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
          'Habit',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff1C2760),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'You can add unlimited habits to your daily routine',
                    style: GoogleFonts.roboto(
                        color: Color(0xff9098B1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffE7F5F4)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Container(
                            child: Center(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/habitsecreen');
                                    },
                                    child: Text(
                                      'Custome Habit',
                                      style: GoogleFonts.roboto(
                                          color: Color(0xff1C2760),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ))),
                            height: 42,
                            width: 147,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffE7F5F4)),
                          ),
                          Container(
                            child: Center(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, '/creathabit');
                                    },
                                    child: Text(
                                      'Create Habit',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ))),
                            height: 42,
                            width: 147,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xff43D5CB)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Creat New Habit',
                      style: GoogleFonts.roboto(
                          color: Color(0xff1C2760),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff09C2B5),
                    decoration: InputDecoration(
                        labelText: 'Habit Title',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9098B1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff09C2B5),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.assignment_outlined,
                          color: Color(0xff9098B1),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff09C2B5),
                    decoration: InputDecoration(
                        labelText: 'Habit Description',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9098B1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff09C2B5),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.list,
                          color: Color(0xff9098B1),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                          isExpanded: true,
                          hint: Row(
                            children: [
                              Icon(
                                Icons.repeat,
                                color: Color(0xff9098B1),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Habit Repeation',
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9098B1),
                                ),
                              ),
                            ],
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          underline: SizedBox(),
                          items: [
                            DropdownMenuItem(
                              child: Text('Every day'),
                              value: 'H',
                            ),
                            DropdownMenuItem(
                              child: Text('Every Week'),
                              value: 'S',
                            ),
                            DropdownMenuItem(
                              child: Text('Every Year'),
                              value: 'Sl',
                            ),
                          ],
                          onChanged: (value) {}),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,
                        color: Color(0xffE5E5E5),)
                    )
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    keyboardType: TextInputType.datetime,
                    cursorColor: Color(0xff09C2B5),
                    decoration: InputDecoration(
                        labelText: 'Date Time',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9098B1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff09C2B5),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.schedule,
                          color: Color(0xff9098B1),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.calendar_today_outlined),
                          color: Color(0xff9098B1),
                          iconSize: 18,
                        )),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/habit_screen');
                    },
                    child: Text(
                      'Create Habit',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(double.infinity, 48),
                      primary: Color(0xff09C2B5),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        // animatedIcon: AnimatedIcons.menu_close,
        icon: Icons.add,
        backgroundColor: Color(0xff09C2B5),

        children: [
          SpeedDialChild(
            backgroundColor: Color(0xff09C2B5),
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/createtask');
                },
                icon: Icon(
                  Icons.add_task,
                  color: Colors.white,
                )),
            label: 'Task',
            labelStyle: TextStyle(color: Colors.white),
            labelBackgroundColor: Color(0xff09C2B5),
          ),
          SpeedDialChild(
            backgroundColor: Color(0xff09C2B5),
            child: IconButton(
                onPressed: () {
                  showButtomSheet();
                },
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                )),
            label: 'Space',
            labelStyle: TextStyle(color: Colors.white),
            labelBackgroundColor: Color(0xff09C2B5),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: BottomNavigationBar(
            currentIndex: 2,
            fixedColor: Color(0xff09C2B5),
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icon: Icon(Icons.home_outlined, color: Color(0xff9098B1))),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/spacelist');
                    },
                    icon: Icon(Icons.dashboard, color: Color(0xff9098B1))),
                label: "Spaces",
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/habitsecreen');
                      },
                      icon: Icon(Icons.list_alt, color: Color(0xff09C2B5))),
                  label: "Habit"),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forcalendar');
                      },
                      icon:
                          Icon(Icons.calendar_month, color: Color(0xff9098B1))),
                  label: "Calendar"),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        showAlertDialog();
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(Icons.logout, color: Color(0xff9098B1)),
                      )),
                  label: "Sign out"),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }

  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: AlertDialog(
              title: Text('Sign Out'),
              content: Text('Are you sure do you wont to sign out'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel')),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/loginsecreen');
                    },
                    child: Text('sure')),
              ],
            ),
          );
        });
  }

  void showButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Creat new Space',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1C2760),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff09C2B5),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Work Space Name',
                            hintStyle: TextStyle(
                                color: Color(0xff9098B1), fontSize: 12),
                          ),
                        ),
                      )),
                      Container(
                          margin: EdgeInsets.only(top: 20, right: 20),
                          child: Icon(
                            Icons.add,
                            color: Color(0xff1C2760),
                          ))
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
