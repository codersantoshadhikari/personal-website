import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MeroApp());
}

class MeroApp extends StatelessWidget {
  const MeroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Santosh Adhikari',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Santosh Adhikari'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'img/san.png',
                width: 180,
                height: 180,
              ),
              const Text(
                'Santosh Adhikari',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const Text(
                'Pokhara, Nepal',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Builder(
                builder: (context) {
                  return const SizedBox(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Hello, I am a mobile application developer I can develop mobile applications using Flutter.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.amberAccent,
                            letterSpacing: 1.5,
                            wordSpacing: 2.0,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://www.facebook.com/santoshsadhikari08/';
                  if (await canLaunchUrl(url as Uri)) {
                    await launchUrl(url as Uri);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.facebook,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
