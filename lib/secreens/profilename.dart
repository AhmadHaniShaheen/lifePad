import 'package:flutter/material.dart';
class ProfileName extends StatefulWidget {
  const ProfileName({Key? key}) : super(key: key);

  @override
  State<ProfileName> createState() => _ProfileNameState();
}

class _ProfileNameState extends State<ProfileName> {
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
          'Name',
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
                child: Text('Full Name',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person,color: Color(0xff9098B1),),
                hintText: 'John Nader',
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
              height: 32,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('Description',style: TextStyle(color: Color(0xff1C2760),fontWeight: FontWeight.w700,fontSize: 16),)),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Icon(Icons.person,color: Color(0xff9098B1),),
                ),
                hintText: 'I\'m crazy about code so I\'m front end developer',
                hintStyle: TextStyle(color: Color(0xff636777)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE5E5E5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE5E5E5)),
                ),
              ),
              maxLines: 4, //or null
              // decoration: InputDecoration.collapsed(hintText: "Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here Enter your text here "),
            ),
            SizedBox(
              height: 48,
            ),
            ElevatedButton(onPressed: (){}, child: Text('Save Change'),style: ElevatedButton.styleFrom(primary: Color(0xff09C2B5),minimumSize: Size(double.infinity,48)),),

          ],
        ),
      ),

    );
  }
}
