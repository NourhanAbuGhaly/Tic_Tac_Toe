import 'package:flutter/material.dart';
import 'package:tic_tac_toe/ChooseSideScreen.dart';

class PalyModeScreen extends StatefulWidget {
  const PalyModeScreen({super.key});

  @override
  State<PalyModeScreen> createState() => _PalyModeScreenState();
}

class _PalyModeScreenState extends State<PalyModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset("assets/o.jpg", width: 99),
                Image.asset("assets/x.jpg", width: 99),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text("Choose Your Play mode"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(300, 50),
                padding: EdgeInsets.symmetric(vertical: 10),
                elevation: 10,
                shadowColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChooseSideScreen(
                    isAi: true,
                  );
                }));
              },
              child: Text(
                "With AI",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(300, 50),
                padding: EdgeInsets.symmetric(vertical: 10),
                elevation: 10,
                shadowColor: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChooseSideScreen(
                    isAi: false,
                  );
                }));
              },
              child: Text(
                "With Friend",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
