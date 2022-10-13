import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeWithTask extends StatefulWidget {
  const HomeWithTask({Key? key}) : super(key: key);

  @override
  State<HomeWithTask> createState() => _HomeWithTaskState();
}

class _HomeWithTaskState extends State<HomeWithTask> {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'LifePad',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff1C2760),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/searchsecreen');
              },
              icon: Icon(
                Icons.search,
                color: Color(0xff9098B1),
                size: 24,
              )),
          SizedBox(
            width: 5,
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/notification');
              },
              icon: Icon(
                Icons.notifications_outlined,
                color: Color(0xff9098B1),
                size: 24,
              )),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilesecreen');
                },
                icon: Image(
                  image: AssetImage('images/profileimg.png'),
                  width: 26,
                  height: 26,
                )),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Divider(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/homewithtask');

                                },
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff09C2B5),
                                      fontWeight: FontWeight.w700),
                                )),
                          )),
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Color(0xff09C2B5),
                                width: 1,
                              ))),
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/futuretask');

                          },
                          child: Text('Future',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff9098B1),
                                  fontWeight: FontWeight.w700))),
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/completedtask');

                          },
                          child: Text(
                            'Completed',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff9098B1),
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: ExpansionTile(
                    title: Text(
                      'Sport (2)',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Color(0xff1C2760),
                          fontWeight: FontWeight.w700),
                    ),
                    leading: IconButton(onPressed: (){}, icon: Icon(
                      Icons.add,
                      color: Color(0xff1C2760),
                    )),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: ListTile(title: Text(
                          'Prepar for English exam',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff1C2760),
                              fontWeight: FontWeight.w700),
                        ),),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: ListTile(title: Text(
                          'Prepar for English exam',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff1C2760),
                              fontWeight: FontWeight.w700),
                        ),),
                      ),

                    ],
                  ),
                ),
                Divider(),
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
                            color: Color(0xff636777),
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
                Divider(),
                Container(
                  child: ExpansionTile(
                    title: Text(
                      'Home (1)',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Color(0xff1C2760),
                          fontWeight: FontWeight.w700),
                    ),
                    leading: IconButton(onPressed: (){}, icon: Icon(
                      Icons.add,
                      color: Color(0xff1C2760),
                    )),
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: ListTile(title: Text(
                          'Prepar for English exam',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff1C2760),
                              fontWeight: FontWeight.w700),
                        ),),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Color(0xff09C2B5),
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icon: Icon(Icons.home_outlined, color: Color(0xff09C2B5))),
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
                      icon: Icon(Icons.list_alt, color: Color(0xff9098B1))),
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
