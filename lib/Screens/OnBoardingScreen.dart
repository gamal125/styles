import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:styley/components.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingPage(
                title: 'Enjoy your treatment',
                description: 'Sit back and relax to enjoy a treatment that makes you happy every day.',
                imagePath: 'assets/images/onboarding1.jpg', context: context,

              ),
              OnboardingPage(
                title: 'Save your favorite',
                description: 'Save the favorite salon you want and have your own stylist.',
                imagePath: 'assets/images/onboarding2.jpg', context: context,

              ),
              OnboardingPage(
                title: 'Discover salon near you',
                description: 'Find the best salon want by your location or neighborhood!',
                imagePath: 'assets/images/onboarding3.jpg',
                isLastPage: true, context: context,

              ),


            ],
          ),

          Positioned(
            bottom: 30.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      indicators.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 12.0,
      width: isActive ? 30.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blueAccent : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final bool isLastPage;

  final BuildContext context;
   OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.context,

    this.isLastPage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60.0),
          Text(
            title,
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0,color: Colors.grey),
          ),
          SizedBox(height: 40.0),
          Container(
            width:MediaQuery.of(context).size.width*0.8,
            height:MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)),
          )
   ,
          SizedBox(height: 40.0),
          if (isLastPage)
            defaultMaterialButton(
              function: () {
                // Save onboarding completion status
                _setOnboardingComplete();
                // Navigate to next screen (e.g., home screen)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
                text:'Get Started', context: context,
            ),


        ],
      ),
    );
  }

  Future<void> _setOnboardingComplete() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingComplete', true);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to MyApp!'),
      ),
    );
  }
}