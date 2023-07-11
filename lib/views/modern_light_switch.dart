import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModernLightSwitch extends StatefulWidget {
  const ModernLightSwitch({super.key});

  @override
  State<ModernLightSwitch> createState() => _ModernLightSwitchState();
}

class _ModernLightSwitchState extends State<ModernLightSwitch> {
  bool switchOn = false;
  Color onColor = const Color.fromARGB(255, 5, 132, 236);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 23),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: switchOn ? onColor : Colors.black,
                color: Colors.black,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "@Mbilalcodes",
                    style: GoogleFonts.aBeeZee(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black,
                  boxShadow: [
                    if (switchOn)
                      BoxShadow(
                        color: onColor,
                        spreadRadius: 5,
                        blurRadius: 15,
                      ),
                  ],
                ),
                child: SizedBox(
                  width: 300,
                  height: 350,
                  child: Icon(
                    Icons.lightbulb_outline_rounded,
                    size: 100,
                    color: switchOn ? onColor : Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: FittedBox(
                child: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  trackColor: MaterialStateProperty.all(
                      switchOn ? onColor : Colors.black),
                  thumbColor: MaterialStateProperty.all(Colors.white),
                  trackOutlineColor: MaterialStateProperty.all(Colors.white),
                  value: switchOn,
                  onChanged: (value) {
                    switchOn = !switchOn;
                    setState(() {});
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
