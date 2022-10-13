import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SpaceListFromBiging extends StatefulWidget {
  const SpaceListFromBiging({Key? key}) : super(key: key);

  @override
  State<SpaceListFromBiging> createState() => _SpaceListFromBigingState();
}

class _SpaceListFromBigingState extends State<SpaceListFromBiging> {
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
          height: 600,
          child: Column(
            children: [
              SizedBox(
                height: 420,
              ),
              Text(
                'No Space List',
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
                Navigator.pushNamed(context, '/spacelist');
              }, child: Text(
                'Add Sapce ',
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
