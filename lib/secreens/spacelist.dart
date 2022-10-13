import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpaceList extends StatefulWidget {
  const SpaceList({Key? key}) : super(key: key);

  @override
  State<SpaceList> createState() => _SpaceListState();
}

class _SpaceListState extends State<SpaceList> {
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

      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: (){
            Navigator.pushNamed(context, '/home');
          }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff000000),)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Spaces',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff1C2760),
              fontWeight: FontWeight.bold,
            ),
          ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/searchsecreen');
          }, icon: Icon(
            Icons.search,
            color: Color(0xff9098B1),
            size: 24,
          )),
          SizedBox(
            width: 5,
          ),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/notification');
          }, icon: Icon(
            Icons.notifications_outlined,
            color: Color(0xff9098B1),
            size: 24,
          )),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(onPressed: (){
              Navigator.pushNamed(context, '/profilesecreen');

            }, icon: Image(
              image: AssetImage('images/profileimg.png'),
              width: 26,
              height: 26,
            )),
          )
        ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Color(0xff09C2B5))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Text(
                          'all Spaces',
                          style:
                          TextStyle(fontSize: 16, color: Color(0xff1C2760)),
                        ),
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
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 24,
                          child: Center(child: IconButton(onPressed: (){
                            showButtomSheet();
                          }, icon: Icon(Icons.add))),
                          backgroundColor: Color(0xffE7F5F4),
                        ),
                      ],
                    ),
                  ],
                ),
                GridView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 150 / 100,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/tasklist');
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff09C2B5)),
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xffF1FFFE),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  IconButton(onPressed: (){}, icon:                                 Image(image: AssetImage('images/book.png')),
                                  ),
                                  Text(
                                    'Study',
                                    style: TextStyle(
                                        color: Color(0xff223263),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '3 Days',
                                    style: TextStyle(
                                        color: Color(0xff9098B1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    );
                  },
                )


              ],
            ),
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
