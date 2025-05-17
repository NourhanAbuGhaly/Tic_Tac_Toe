import "package:flutter/material.dart";
import "package:tic_tac_toe/GameScreen.dart";

class ChooseSideScreen extends StatefulWidget {
  final bool isAi;

  const ChooseSideScreen({super.key, required this.isAi});

  @override
  State<ChooseSideScreen> createState() => _ChooseSideScreenState();
}

class _ChooseSideScreenState extends State<ChooseSideScreen> {
  String selsectedSide = 'X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pick your side",
            style: TextStyle(),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/x.jpg",
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Transform.scale(
                    scale: 1.5,
                    child: Radio(
                      value: "X",
                      groupValue: selsectedSide,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          selsectedSide = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/o.jpg",
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Transform.scale(
                    scale: 1.5,
                    child: Radio(
                      value: "O",
                      groupValue: selsectedSide,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          selsectedSide = value!;
                        });
                      },
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GameScreen(
                      playerSide: selsectedSide, isAi: widget.isAi);
                }));
              },
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black54,
                ),
              ))
        ],
      ),
    );
  }
}
