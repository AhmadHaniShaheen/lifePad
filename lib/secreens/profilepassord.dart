import 'package:flutter/material.dart';
class ProfilePasword extends StatefulWidget {
  const ProfilePasword({Key? key}) : super(key: key);

  @override
  State<ProfilePasword> createState() => _ProfilePaswordState();
}

class _ProfilePaswordState extends State<ProfilePasword> {
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
          'Password',
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
                child: Text('Old Password',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
              cursorColor: Color(0xff09C2B5),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone,color: Color(0xff9098B1),),
                hintText: 'Password',
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
              height: 24,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('New Password',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              cursorColor: Color(0xff09C2B5),

              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone,color: Color(0xff9098B1),),
                hintText: 'New Password',
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
              height: 24,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('Conferm Password',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              cursorColor: Color(0xff09C2B5),

              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone,color: Color(0xff9098B1),),
                hintText: 'New Password',
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
