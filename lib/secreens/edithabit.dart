import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EditHabitSecreen extends StatefulWidget {
  const EditHabitSecreen({Key? key}) : super(key: key);

  @override
  State<EditHabitSecreen> createState() => _EditHabitSecreenState();
}

class _EditHabitSecreenState extends State<EditHabitSecreen> {
  bool _switchtilelistone = false;
  bool _switchtilelist = false;
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
          style: GoogleFonts.roboto(
              color: Color(0xff1C2760),
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Color(0xffE5E5E5),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Edit Your Habit',
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff09C2B5),
                    decoration: InputDecoration(
                        labelText: 'Go For A walk',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9098B1),
                        ),
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.assignment_outlined,
                          color: Color(0xff9098B1),
                        ),
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff09C2B5),
                    decoration: InputDecoration(
                        labelText: 'One of the best ways to calm down.',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9098B1),
                        ),
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.list,
                          color: Color(0xff9098B1),
                        ),
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xff09C2B5),
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: '1/6/2022',
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9098B1),
                        ),
                        focusedBorder: InputBorder.none,
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff9098B1),
                              size: 20,
                            )),
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SwitchListTile(
                  activeColor: Color(0xff09C2B5),
                  value: _switchtilelist,
                  onChanged: (value) {
                    setState(() {
                      _switchtilelist = value;
                    });
                  },
                  title: ListTile(
                    leading: Icon(
                      Icons.schedule,
                      color: Color(0xff9098B1),
                      size: 22,
                    ),
                    title: Text(
                      'Reminder',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
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
                  title: ListTile(
                    leading: Icon(Icons.repeat, color: Color(0xff9098B1)),
                    title: Text(
                      'Repeat',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: Column(
                children: [
                  ListTile(
                      leading:
                      Icon(Icons.delete_outline, color: Color(0xff9098B1)),
                      title: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Remove',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9098B1),
                            ),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save Change',
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
