import 'package:FoodDeliveryApp/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:flutter/rendering.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
      for (int i=0; i<_numPages; i++){
        list.add(i == _currentPage ? _indicator(true): _indicator(false));   
      }
      return list;
   }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 4.0,
      width: isActive ? 16.0: 8.0,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor: KPage,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Row(
        children: <Widget>[
          Expanded(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: ()=> print('Skip'),
                      child: Text('Skip',
                      style: TextStyle(color: kPrimaryColor, fontSize: 20.0)
                    ),
                  ),
                ),
                  Container(
                    height: 500.0,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page){ setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Center(child: Image(
                                image: AssetImage('assets/images/logo.png'),
                                height: 300.0,
                                width: 300.0,
                                ),
                            ),
                              Text('Find your favorite foods', style: kTitleStyle,),
                              Text('Discover best food from all \nover 1000 eateries all over\n the world', textAlign: TextAlign.center,
                              style: kSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Center(

                              child: Image(
                                image: AssetImage('assets/images/onboarding2.png'),
                                height: 300.0,
                                width: 300.0,
                                ),
                              ),
                              Text('Delicious food',
                              style: kTitleStyle,
                              ),
                              Text('Just order for your decilious food\n and we deliver',
                                textAlign: TextAlign.center,
                              style: kSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/Slider.png'),
                                height: 300.0,
                                width: 300.0,
                                ),
                            ),
                              Text('Fast Delivery',
                              style: kTitleStyle,
                              ),
                              Text('Fast delvery to your home,\n office and wherever you are',
                              textAlign: TextAlign.center,
                              style: kSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ), 
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: 
                  _buildPageIndicator(),
            ),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: FlatButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Next',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                Icons.arrow_forward,
                                color: kPrimaryColor,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
    )
  ]
          
    ),
    bottomSheet: _currentPage == _numPages -1 ? Container(
      height: 100.0,
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome())),
              child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.0),
        
            child: Text('Get started', 
            style: TextStyle(color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20.0
            ),
          ) 
        ),
        ),
      )
    ): 
    Text(''),
        
  );              
}
}