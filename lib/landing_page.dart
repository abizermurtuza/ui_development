import 'package:flutter/material.dart';
import 'package:ui_development/app_constants.dart';
import 'package:ui_development/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/girl.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.purple.withOpacity(0.4),
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(30),
                          )),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Text(
                        AppConstants.discoverText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        AppConstants.descriptionText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.amber,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // border: Border.all(
                    //   width: 1,
                    //   color: Colors.white,
                    // )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: _buildButton(
                              title: AppConstants.registerText,
                              color: Colors.white)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _buildButton(
                            title: AppConstants.signInText,
                            color: Colors.white,
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildButton({String? title, Color? color, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color ?? Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Text(
            title ?? "title",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
