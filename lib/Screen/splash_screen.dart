import 'package:myapp/Screen/fitness_home_screen.dart';
import 'package:myapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Image.network(
            "https://raw.githubusercontent.com/Miguel-Rios1094/DulceriaVero_imagenes_app_flutter/refs/heads/main/Dulceria1.jpg",
            height: size.height * 0.50,
            fit: BoxFit.fill,
            width: size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.75,
                  child: const Text(
                    "Dulceria Vero\nBienvenido!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Hecha un vistazo a cuando has consumido de nuestros productos.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FitnessHomeScreen(),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 15,
                      shadowColor: primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(200),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
