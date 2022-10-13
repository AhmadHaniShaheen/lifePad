import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
class BurthdayProifle extends StatefulWidget {
  const BurthdayProifle({Key? key}) : super(key: key);

  @override
  State<BurthdayProifle> createState() => _BurthdayProifleState();
}

class _BurthdayProifleState extends State<BurthdayProifle> {
  DateTime dateTime=DateTime(2020);
  TimeOfDay timeOfDay = TimeOfDay(hour: 8, minute: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profilesecreen');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff000000),
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Burthday',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff1C2760),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Divider(),
            SizedBox(
              height: 32,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('Create Task',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              cursorColor: Color(0xff09C2B5),
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime(2020),
                      lastDay: DateTime(2025));
                  showTimeButtomSheet();
                }, icon: Icon(Icons.calendar_month,color: Color(0xff09C2B5),)),

                hintText: '12-2-2002',
                hintStyle: TextStyle(color: Color(0xff636777)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE5E5E5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE5E5E5)),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('We will send vertification to your New email ',style: TextStyle(color: Color(0xff9098B1)),)),
            SizedBox(
              height: 48,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/profilesecreen');
            }, child: Text('Save Change'),style: ElevatedButton.styleFrom(primary: Color(0xff09C2B5),minimumSize: Size(double.infinity,48)),),
          ],
        ),
      ),
    );
  }
  void showTimeButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
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

}
