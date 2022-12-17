import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tititpsini1/intro_screens/intro_page_1.dart';
import 'package:tititpsini1/intro_screens/intro_page_2.dart';
import 'package:tititpsini1/intro_screens/intro_page_3.dart';
import 'package:tititpsini1/sign/signin.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track of which page were on
  PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titipsini.com',
        style: TextStyle(fontFamily: "Poppins"),),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.green),
        ),
      ),
      body: Stack(
        children: [
          // page view
          PageView(
            
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          // dot indicators
          Container(
            alignment: Alignment(0, 0.35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('skip')),

                // dot indicator
                
                SmoothPageIndicator(controller: _controller, count: 3,
                effect: SlideEffect(
                  dotColor: Colors.green,
                  activeDotColor: Colors.grey
                ),),

                // next or done
                onLastPage
                    ? GestureDetector(
                      
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignIn();
                              },
                            ),
                          );
                        },
                        child: Text('done'))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('next')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
