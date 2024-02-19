import 'package:flutter/material.dart';

class CheckBoxTilte extends StatefulWidget {
  const CheckBoxTilte({super.key});

  @override
  State<CheckBoxTilte> createState() => _CheckBoxTilteState();
}

class _CheckBoxTilteState extends State<CheckBoxTilte> {
  late List<bool> _isChecked;
  List<String> _sites = ['Chennai','Mumbai','Delhi'];
  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_sites.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: _sites.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(_sites[index]),
              value: _isChecked[index],
              onChanged: (value) {
                setState(() {
                  _isChecked[index] = value!;
                });
              });
        },
      )),
    );
  }
}
