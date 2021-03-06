import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DoctorDetailPage extends StatefulWidget {
  final String doctorName;
  final String doctorPart;
  final String doctorRate;

  DoctorDetailPage({this.doctorName, this.doctorPart, this.doctorRate});

  @override
  _DoctorDetailPageState createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
  Widget _buildBackgroundWidget() {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      right: 0,
      child: Row(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.grey[200],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SlidingUpPanel(
        minHeight: 200,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
        panel: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              height: 3,
              width: 24,
              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
        body: Stack(
          children: [
            _buildBackgroundWidget(),
            Positioned(
                left: 16,
                right: 16,
                top: 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Center(
                              child: Icon(Icons.arrow_back_ios_outlined, size: 18,),
                            ),
                          ),
                        ),
                  Text("Detail Doctor", style: TextStyle(
                    fontSize: 16
                  ),),
                  IconButton(icon: Icon(Icons.more_horiz), onPressed: (){})
            ],))
          ],
        ),
      )),
    );
  }
}
