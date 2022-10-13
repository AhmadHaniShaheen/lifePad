import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TaskListFromBiging extends StatefulWidget {
  const TaskListFromBiging({Key? key}) : super(key: key);

  @override
  State<TaskListFromBiging> createState() => _TaskListFromBigingState();
}

class _TaskListFromBigingState extends State<TaskListFromBiging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 620,
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
                height: 370,
              ),
              Text(
                'there is No any task',
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Color(0xff1C2760),
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 16),
                child: Text(
                  'Don\'t have task Yet! when you add you will see them here  ',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0xff9098B1),
                      fontWeight: FontWeight.w400),textAlign:TextAlign.center,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, '/createtask');
              }, child: Text(
                'Add Task ',
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Color(0xff1C2760),
                    fontWeight: FontWeight.w700),
              ),)
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/taskfrombiging.png"),
              )),

        ),
      ),

    );
  }
}
