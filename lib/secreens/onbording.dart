import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/widgets/indenttap.dart';
import 'package:untitled/widgets/onbodingwedgets.dart';

class OnbordingAh extends StatefulWidget {
  const OnbordingAh({Key? key}) : super(key: key);

  @override
  State<OnbordingAh> createState() => _OnbordingAhState();
}

class _OnbordingAhState extends State<OnbordingAh> {
  late PageController _pageController;
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Visibility(
                visible: _counter != 2,
                replacement: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: TextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, '/signup');
                    }, child: Text(
                      'Start',
                      style: TextStyle(color: Color(0xff09C2B5), fontSize: 16),
                    ),)
                  ),
                ),
                child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: TextButton(onPressed: (){
                          _pageController.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.ease);
                        }, child: Text(
                          'Skip',
                          style:
                          TextStyle(color: Color(0xff09C2B5), fontSize: 16),
                        )))),
              ),
            ),
            Expanded(
                child: PageView(
                    controller : _pageController,
                    onPageChanged: (value) {
                setState(() {
                  _counter = value;
                });
              },
              children: [
                OnbordingWedget(
                    ImageBording: 'images/thard.png',
                    Title: 'Organize in on place',
                    description:
                        'Organize Your task are automatically sorted views to help you focus on your most important things.'),
                OnbordingWedget(
                    ImageBording: 'images/secand.png',
                    Title: 'Achieve more every day.',
                    description:
                        'Organize Your task are automatically sorted views to help you focus on your most important things.'),
                OnbordingWedget(
                    ImageBording: 'images/first.png',
                    Title: 'Manage your task Easily',
                    description:
                        'Organize Your task are automatically sorted views to help you focus on your most important things.'),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectorIndent(selector: _counter == 0),
                SelectorIndent(selector: _counter == 1),
                SelectorIndent(selector: _counter == 2),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _counter!=0,
                      child: IconButton(
                          onPressed: () {
                            _pageController.previousPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.ease);
                          },
                          icon: Icon(Icons.arrow_back_ios))),
                  Visibility(
                      visible: _counter!=2,

                      child: IconButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.ease);
                          },
                          icon: Icon(Icons.arrow_forward_ios)))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
