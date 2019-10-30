import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_experiments/screens/parental_love_screen.dart';
import 'package:state_management_experiments/screens/set_state_experiment_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/parental_love_screen',
      routes: {
        '/': (_) => HomeScreen(),
        '/set_state_experiment_screen': (_) => SetStateExperimentScreen(),
        '/parental_love_screen': (_) => ParentalLoveScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'State Management Exps',
        ),
      ),
      body: ListView(
        children: <Widget>[
          HomeScreenSelectionButton(
            buttonLabel: '00. setState ',
            pushRouteName: '/set_state_experiment_screen',
          ),
          HomeScreenSelectionButton(
            buttonLabel: '01. parental love',
            pushRouteName: '/parental_love_screen',
          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
//          HomeScreenSelectionButton(
//            buttonLabel: '00. setState ',
//            pushRouteName: '/setState',
//          ),
        ],
      ),
    );
  }
}

// responsibility: provides styling for the HomeScreen buttons
class HomeScreenSelectionButton extends StatelessWidget {
  final String pushRouteName;
  final String buttonLabel;

  const HomeScreenSelectionButton({
    Key key,
    @required this.pushRouteName,
    @required this.buttonLabel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: () => Navigator.pushNamed(context, pushRouteName),
        child: Text(
          buttonLabel,
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.black87),
        ),
        color: Colors.teal[100],
        padding: EdgeInsets.symmetric(vertical: 25),
      ),
    );
  }
}
