import 'package:flutter/material.dart';
class ProfileSecreenAH extends StatefulWidget {
  const ProfileSecreenAH({Key? key}) : super(key: key);

  @override
  State<ProfileSecreenAH> createState() => _ProfileSecreenAHState();
}

class _ProfileSecreenAHState extends State<ProfileSecreenAH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff000000),)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
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
            Container(
              height: 240,
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.center,
                    children: [
                      Image(
                        image: AssetImage('images/profileBackground.png'),
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 110,
                        right: 120,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.white,
                          child: Image(image: AssetImage('images/uiface.png')),
                        ), //CircularAvatar
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'John Nader',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1C2760),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      'I\'m crazy about code so I\'m front end developer',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff9098B1)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(width: 1.0, color: Color(0xffE5E5E5),)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/profileemail');

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(child: Icon(Icons.email,color: Color(0xff09C2B5),)),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Email',style: TextStyle(color: Color(0xff1C2760)),)
                                ],
                              ),

                              Row(
                                children:
                                [
                                  Text('john2002@gmail.com',style: TextStyle(color: Color(0xff9098B1)),),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Color(0xff9098B1),),
                                ],

                              )
                            ],
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(width: 1.0, color: Color(0xffE5E5E5),)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/profileburthday');

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(child: Icon(Icons.calendar_month,color: Color(0xff09C2B5),)),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Burthday',style: TextStyle(color: Color(0xff1C2760)),)
                                ],
                              ),

                              Row(
                                children:
                                [
                                  Text('12-2-2002',style: TextStyle(color: Color(0xff9098B1)),),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Color(0xff9098B1),),
                                ],

                              )
                            ],
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),

                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(width: 1.0, color: Color(0xffE5E5E5),)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/profilephone');

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(child: Icon(Icons.phone,color: Color(0xff09C2B5),)),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Phone No',style: TextStyle(color: Color(0xff1C2760)),)
                                ],
                              ),

                              Row(
                                children:
                                [
                                  Text('0595521012',style: TextStyle(color: Color(0xff9098B1)),),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Color(0xff9098B1),),
                                ],

                              )
                            ],
                          )),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),

                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(width: 1.0, color: Color(0xffE5E5E5),)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/profilepassword');

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(child: Icon(Icons.lock,color: Color(0xff09C2B5),)),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Password',style: TextStyle(color: Color(0xff1C2760)),)
                                ],
                              ),

                              Row(
                                children:
                                [
                                  Text('*********',style: TextStyle(color: Color(0xff9098B1)),),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Color(0xff9098B1),),
                                ],

                              )
                            ],
                          )),
                    ),
                  ),


                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
