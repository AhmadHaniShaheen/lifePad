import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  bool _switchtilelistone = false;
  bool _switcharchivelist = false;
  bool _switcharchivetree = false;
  bool _switcharchivefour = false;
  TimeOfDay timeOfDay = TimeOfDay(hour: 8, minute: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Create Task',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff1C2760),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Divider(),
              SizedBox(
                height: 30,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: 'Task title',
                    hintStyle: TextStyle(
                      color: Color(0xff9098B1),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 24,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Would you like to add more details? ',
                    style: TextStyle(fontSize: 14, color: Color(0xff9098B1)),
                  )),
              SizedBox(
                height: 24,
              ),
              TextButton(
                  onPressed: () {
                    showcategorybuttomSheet();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.select_all,
                        color: Color(0xff1C2760),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Select Category',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    showTimeButtomSheet();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Color(0xff1C2760),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Add Time',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    showproiortybuttomSheet();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.flag_outlined,
                        color: Color(0xff1C2760),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Set Priority',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.content_copy,
                        color: Color(0xff1C2760),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Duplicate ',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    addnoteorattachment();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.note_add_outlined,
                        color: Color(0xff1C2760),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Add Notes & file',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                      ),
                    ],
                  )),
              Column(
                children: [
                  SwitchListTile(
                    activeColor: Color(0xff09C2B5),
                    value: _switchtilelistone,
                    onChanged: (valueone) {
                      setState(() {
                        _switchtilelistone = valueone;
                      });
                    },
                    title: Row(
                      children: [
                        Icon(Icons.favorite_outline, color: Color(0xff1C2760)),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Favourite',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                        ),
                      ],
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color(0xff09C2B5),
                    value: _switcharchivelist,
                    onChanged: (valuetwo) {
                      setState(() {
                        _switcharchivelist = valuetwo;
                      });
                    },
                    title: Row(
                      children: [
                        Icon(Icons.archive_outlined, color: Color(0xff1C2760)),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Archive',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                        ),
                      ],
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color(0xff09C2B5),
                    value: _switcharchivetree,
                    onChanged: (valuetwo) {
                      setState(() {
                        _switcharchivetree = valuetwo;
                      });
                    },
                    title: Row(
                      children: [
                        Icon(Icons.notifications_outlined,
                            color: Color(0xff1C2760)),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Add Reminder',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                        ),
                      ],
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color(0xff09C2B5),
                    value: _switcharchivefour,
                    onChanged: (valuefour) {
                      setState(() {
                        _switcharchivefour = valuefour;
                      });
                    },
                    title: Row(
                      children: [
                        Icon(Icons.pin_drop_outlined, color: Color(0xff1C2760)),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Pin this task',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff1C2760)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tasklist');
                },
                child: Text('Save Change'),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff09C2B5),
                    minimumSize: Size(double.infinity, 48)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                          hintText: 'work space Name',
                          hintStyle:
                              TextStyle(color: Color(0xff9098B1), fontSize: 12),
                        ),
                      ),
                    )),
                    Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Color(0xff1C2760)),
                        ))
                  ],
                ),
                SizedBox(
                  height: 300,
                ),
              ],
            ),
          );
        });
  }

  void showcategorybuttomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Select Category',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff1C2760),
                            fontWeight: FontWeight.w700),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xff09C2B5),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'Sport',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xff09C2B5),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xff09C2B5),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'Work',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showcreatcategorySheet();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 20, right: 20),
                              child: Icon(
                                Icons.add,
                                color: Color(0xff09C2B5),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'Create Category',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
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

  void showcreatcategorySheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Creat new Category',
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
                          hintText: 'work space Name',
                          hintStyle:
                              TextStyle(color: Color(0xff9098B1), fontSize: 12),
                        ),
                      ),
                    )),
                    Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Color(0xff1C2760)),
                        ))
                  ],
                ),
                SizedBox(
                  height: 300,
                ),
              ],
            ),
          );
        });
  }

  void showTimeButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        TableCalendar(
                            focusedDay: DateTime.now(),
                            firstDay: DateTime(2020),
                            lastDay: DateTime(2025));
                      },
                      child: Text(
                        'Date',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff09C2B5),
                        minimumSize: Size(136, 32),
                        elevation: 0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showTimePicker(context: context, initialTime: timeOfDay)
                            .then((value) => {
                                  setState(() {
                                    timeOfDay = value!;
                                  })
                                });
                      },
                      child: Text(
                        'Time',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xff1C2760),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xff09C2B5), width: 1),
                        primary: Colors.white,
                        minimumSize: Size(136, 32),
                        elevation: 0,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      child: TableCalendar(
                        focusedDay: DateTime.now(),
                        firstDay: DateTime(2020),
                        lastDay: DateTime(2025),
                        startingDayOfWeek: StartingDayOfWeek.saturday,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Select',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff09C2B5),
                      minimumSize: Size(311, 48),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void addnoteorattachment() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        addnoteorattachment();
                      },
                      child: Text(
                        'Note',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff09C2B5),
                        minimumSize: Size(136, 32),
                        elevation: 0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showuplodattachment();
                      },
                      child: Text(
                        'Attachment',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xff1C2760),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xff09C2B5), width: 1),
                        primary: Colors.white,
                        minimumSize: Size(136, 32),
                        elevation: 0,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Type your notes',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff1C2760)),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            cursorColor: Color(0xff09C2B5),
                            maxLines: 10,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: Color(0xff9098B1))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: Color(0xff9098B1))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Ok',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff09C2B5),
                      minimumSize: Size(double.infinity, 48),
                      elevation: 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 44,
                )
              ],
            ),
          );
        });
  }

  void showuplodattachment() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        addnoteorattachment();
                      },
                      child: Text(
                        'Note',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xff1C2760),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xff09C2B5), width: 1),
                        primary: Colors.white,
                        minimumSize: Size(136, 32),
                        elevation: 0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addnoteorattachment();
                      },
                      child: Text(
                        'Attachment',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff09C2B5),
                        minimumSize: Size(136, 32),
                        elevation: 0,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Type your notes',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff1C2760)),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.3,color: Color(0xff9098B1))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image(
                                      image: AssetImage('images/uplodfile.png')),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text('Drag files to Upload',style: GoogleFonts.roboto(fontSize: 12,color: Color(0xff1C2760)),),
                                  Text('or',style: GoogleFonts.roboto(fontSize: 12,color: Color(0xff1C2760))),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Choose File',style: GoogleFonts.roboto(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      side: BorderSide(
                                        color: Color(0xff09C2B5),

                                      ),
                                      elevation: 0
                                    ),

                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Ok',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff09C2B5),
                      minimumSize: Size(double.infinity, 48),
                      elevation: 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 44,
                )
              ],
            ),
          );
        });
  }

  void showproiortybuttomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Select a priority',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff1C2760),
                            fontWeight: FontWeight.w700),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xff09C26C),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'High',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xffEDF25B),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'Medium',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xffC21609),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              'Low',
                              style: TextStyle(
                                  color: Color(0xff1C2760),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NO Priority',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff1C2760)),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.check,
                                color: Color(0xff1C2760),
                              ))
                        ],
                      ),
                    ),
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
