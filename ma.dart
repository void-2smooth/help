import 'package:flutter/material.dart';

// Whould not recomend writing all this in the main.dart rather spilt it up
void main() => runApp(const Home()); //make home() a constant

//home needs to be uppercase

class Home extends StatefulWidget {
  const Home({super.key}); // always add supper.key

  @override
  HomeState createState() => HomeState();
}
// dont use private type in a public API

class HomeState extends State<Home> {
  Null _selectedQuestion;
  // no need for = null the null at the begining is enough

  get child => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Help",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Help')),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(25),
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: Icon(Icons.report, size: 18),
                  label: Text("Report A Problem"),
                ),
              ),

              Container(
                margin: EdgeInsets.all(25),
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: Icon(Icons.help_center, size: 18),
                  label: Text("Help Center"),
                ),
              ),

              Container(
                margin: EdgeInsets.all(25),
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: Icon(Icons.privacy_tip, size: 18),
                  label: Text("Privacy And Security Help"),
                ),
              ),

              DropdownButton(
                value: _selectedQuestion,
                items: _dropDownItem(),
                onChanged: (value) {
                  _selectedQuestion = value as Null;
                  setState(() {});
                },
                hint: Text('FAQs'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> _dropDownItem() {
  List<String> ddl = ["Question1", "Question2", "Question3"];
  return ddl
      .map((value) => DropdownMenuItem(value: value, child: Text(value)))
      .toList();
}



// **Reusable method for creating outlined buttons**
// - Reduces code duplication
// - Takes an icon and a label as parameters



//   Widget _buildOutlinedButton(IconData icon, String label) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10), // Uniform spacing
//       child: OutlinedButton.icon(
//         onPressed: () {
//           // Placeholder for button actions
//         },
//         icon: Icon(icon, size: 18),
//         label: Text(label),
//       ),
//     );
//   }
// }

//just make a final icon and a final label variable
