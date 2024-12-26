import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  double _age = 25;
  String _country = '';
  List<String> _countries = [];
  List<String> selectedHabits = [];
  List<String> availableHabits = [
    'Wake Up Early',
    'Workout',
    'Drink Water',
    'Meditate',
    'Read a Book',
    'Practice Gratitude',
    'Sleep 8 Hours',
    'Eat Healthy',
    'Journal',
    'Walk 10,000 Steps'
  ];

  @override
  void initState() {
    super.initState();
    _fetchCountries();
  }

  Future<void> _fetchCountries() async {
    List<String> subsetCountries = [
      'United States',
      'Canada',
      'United Kingdom',
      'Australia',
      'India',
      'Germany',
      'France',
      'Japan',
      'China',
      'Brazil',
      'South Africa'
    ];

    setState(() {
      _countries = subsetCountries;
      _countries.sort();
      _country = _countries.isNotEmpty ? _countries[0] : 'United States';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _body());
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.blue.shade700,
      centerTitle: true,
      title: Text(
        'Register',
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
    );
  }

  Widget _body() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade700, Colors.blue.shade900],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputField("Name"),
              SizedBox(
                height: 16,
              ),
              _buildInputField("Username"),
              SizedBox(
                height: 16,
              ),
              _buildInputField("Password"),
              SizedBox(
                height: 16,
              ),
              _buildAgeComponent(),
              SizedBox(
                height: 16,
              ),
              __buildDropdown(),
              SizedBox(
                height: 16,
              ),
              _habitComponent(),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            labelText: hintText,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      ),
    );
  }

  Widget _buildAgeComponent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Age: ${_age.toStringAsFixed(0)}",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Slider(
            value: _age,
            min: 20,
            max: 100,
            divisions: 100,
            activeColor: Colors.blue.shade600,
            inactiveColor: Colors.blue.shade300,
            thumbColor: Colors.white,
            onChanged: (v) {
              setState(() {
                _age = v;
              });
            }),
      ],
    );
  }

  Widget __buildDropdown() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: _country,
        isExpanded: true,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        icon: Icon(Icons.arrow_drop_down, color: Colors.blue.shade700),
        items: _countries.map((String country) {
          return DropdownMenuItem(
            value: country,
            child: Text(country),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _country = value.toString();
          });
        },
      ),
    );
  }

  Widget _habitComponent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 10),
          child: Text(
            "Select Habits",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: availableHabits
              .map((habit) => GestureDetector(
                    onTap: () => {
                      setState(() {
                        if (selectedHabits.contains(habit)) {
                          selectedHabits.remove(habit);
                        } else {
                          selectedHabits.add(habit);
                        }
                      })
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: selectedHabits.contains(habit)
                            ? Colors.blue.shade600
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue.shade700),
                      ),
                      child: Text(
                        habit,
                        style: TextStyle(
                            color: selectedHabits.contains(habit)
                                ? Colors.white
                                : Colors.blue.shade600),
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
