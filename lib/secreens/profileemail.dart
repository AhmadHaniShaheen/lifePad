import 'package:flutter/material.dart';
class ProfileEmail extends StatefulWidget {
  const ProfileEmail({Key? key}) : super(key: key);

  @override
  State<ProfileEmail> createState() => _ProfileEmailState();
}

class _ProfileEmailState extends State<ProfileEmail> {
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
          'Email',
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
                child: Text('Email Address',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email,color: Color(0xff9098B1),),
                hintText: 'JohnNader@gmail.com',
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
}
