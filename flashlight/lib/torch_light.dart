import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class Torchlite extends StatefulWidget {
  const Torchlite({super.key});

  @override
  State<Torchlite> createState() => _TorchliteState();
}

class _TorchliteState extends State<Torchlite> {
  final bgColor = const Color(0xff2c3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Flash Light",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'assets/torch_light_color.png' : 'assets/torch_light-remove.png',
                    width: 200,
                    height: 250,
                    color: isActive
                        ? null
                        : textColor.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                        onPressed: () {
                          controller.toggle();
                          isActive = !isActive;
                          setState(() {
                            
                          });
                        },icon: const Icon(Icons.power_settings_new),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
          Text(
            "Developed by Bapi Mandal",
            style: TextStyle(color: textColor, fontSize: 13.0),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
