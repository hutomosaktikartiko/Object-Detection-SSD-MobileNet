import 'package:flutter/material.dart';
import 'package:object_detection_ssd_mobilenet/main.dart';
import 'package:object_detection_ssd_mobilenet/pages/live_camera.dart';
import 'package:object_detection_ssd_mobilenet/pages/static_image_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Object Detector App"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Colors.blueAccent)),
                minWidth: MediaQuery.of(context).size.width - 2 * 24,
                child: RaisedButton(
                  child: Text(
                    "Image Detetction",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StaticImagePage(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width - 2 * 24,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Colors.blue)),
                child: RaisedButton(
                  child: Text(
                    "Real Time Detection",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LiveCamera(cameras),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
