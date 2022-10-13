import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/widgets/habit_widget_screen.dart';
class HabitSecreenActive extends StatefulWidget {
  const HabitSecreenActive({Key? key}) : super(key: key);

  @override
  State<HabitSecreenActive> createState() => _HabitSecreenActiveState();
}

class _HabitSecreenActiveState extends State<HabitSecreenActive> {
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
      body: Column(
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
                        Container(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/creathabit');
                                  },
                                  child: Text(
                                    'Create Habit',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xff1C2760),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ))),
                          height: 48,
                          width: 147,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffE7F5F4)),
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
                    'Most Popular Habit',
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
            child: PopularHabitWidget(
                numbertext: '1',
                titletext: 'Meditation',
                subtitletext: 'One of the best ways to calm down.',
                iconsdata: Icons.add_circle_outlined),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: PopularHabitWidget(
                numbertext: '2',
                titletext: 'Go For A walk',
                subtitletext: 'Perfect to clear your mind.',
                iconsdata: Icons.check_circle_outline),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: PopularHabitWidget(
                numbertext: '3',
                titletext: 'Drink More Water',
                subtitletext: 'Hydration is essential for a healthy body.',
                iconsdata: Icons.check_circle_outline),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: PopularHabitWidget(
                numbertext: '4',
                titletext: 'Wake Up Early',
                subtitletext: 'Win the morning to win the day.',
                iconsdata: Icons.add_circle_outlined),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: SpeedDial(
          // animatedIcon: AnimatedIcons.menu_close,
          icon: Icons.add,
          backgroundColor: Color(0xff09C2B5),

          children: [
            SpeedDialChild(
              backgroundColor: Color(0xff09C2B5),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/createtask');
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: (Icon(Icons.home_outlined)), label: 'Home'),
          BottomNavigationBarItem(
              icon: (Icon(Icons.space_dashboard_outlined)), label: 'Spaces'),
          BottomNavigationBarItem(
              icon: (Icon(Icons.shopping_cart_outlined)), label: 'Cart'),
          BottomNavigationBarItem(
              icon: (Icon(Icons.sell_outlined)), label: 'Offer'),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home_outlined,
              color: Color(0xff40BFFF),
            ),
            icon: (Icon(Icons.person_outline)),
            label: 'Account',
          ),
        ],
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
        }
    );
  }
}
