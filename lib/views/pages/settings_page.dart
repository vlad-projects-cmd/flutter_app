import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/welcome_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isCheckedFirst = false;
  bool? isCheckedSecond = false;
  bool isSwitchedFirst = false;
  bool isSwitchedSecond = false;
  bool isSwitchedThird = false;
  double sliderValueFirst = 0.0;
  String? menuItem = 'G';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox.adaptive(
                tristate: true,
                value: isCheckedFirst,
                onChanged: (bool? value) {
                  setState(() {
                    isCheckedFirst = value;
                  });
                },
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'G', child: Text('Goal Keeper')),
                  DropdownMenuItem(value: 'D', child: Text('Defense')),
                  DropdownMenuItem(value: 'M', child: Text('Middle')),
                  DropdownMenuItem(value: 'A', child: Text('Attack')),
                  DropdownMenuItem(value: 'GOAT', child: Text('GOAT')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                tristate: true,
                title: Text('Click me please!!!'),
                value: isCheckedSecond,
                onChanged: (bool? value) {
                  setState(() {
                    isCheckedSecond = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitchedFirst,
                onChanged: (value) {
                  setState(() {
                    isSwitchedFirst = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text('Switch me please!!!'),
                value: isSwitchedThird,
                onChanged: (value) {
                  setState(() {
                    isSwitchedThird = value;
                  });
                },
              ),
              Slider.adaptive(
                max: 100.0,
                divisions: 10,
                value: sliderValueFirst,
                onChanged: (value) {
                  setState(() {
                    sliderValueFirst = value;
                  });
                  print(value);
                },
              ),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomePage();
                      },
                    ),
                  );
                },
                child: Text('Sign Out'),
              ),
              Divider(color: Colors.blueAccent, thickness: 3.0),
              FilledButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AboutDialog();
                    },
                  );
                },
                child: Text('Open Dialog!'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Divider(color: Colors.blueAccent, thickness: 3.0)],
              ),
              FilledButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Title'),
                        content: Text('Alert Content'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Alert Dialog!'),
              ),
              Divider(color: Colors.blueAccent, thickness: 3.0),
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('Snackbar!'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Open Snackbar!'),
              ),
              Divider(color: Colors.blueAccent, thickness: 3.0),
              CloseButton(),
              Divider(color: Colors.blueAccent, thickness: 3.0),
              BackButton(),
              Divider(color: Colors.blueAccent, thickness: 3.0, endIndent: 200),
              // InkWell(
              //   splashColor: Colors.teal,
              //   onTap: () {
              //     print('Image Selected');
              //   },
              // ),
              GestureDetector(
                onTap: () {
                  print('Image selected');
                },
                child: Image.asset('assets/images/background-1.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
