import 'package:flutter/material.dart';
import 'package:meta_scrap/widgets/gird_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
        centerTitle: true,
        backgroundColor: const Color(0xFF4270b7),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            
              GridView(
                padding: const EdgeInsets.all(25),
                children: IMAGES_TTILE
                    .map((e) => Grid_item(image: e.images, title: e.title))
                    .toList(),
                gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

class ImagesAndTitle {
  String title;
  String images;

  ImagesAndTitle({required this.images, required this.title});

  List<ImagesAndTitle> imag = [];
}

List<ImagesAndTitle> IMAGES_TTILE = [
  ImagesAndTitle(
    images: "assets/images/e-waste.png",
    title: "E-Waste",
  ),
  ImagesAndTitle(images: "assets/images/mix scrap.png", title: "Mix-Scrap"),
  ImagesAndTitle(images: "assets/images/metal.png", title: "Metals"),
  ImagesAndTitle(images: "assets/images/perecious metal.png", title: "Precious")
];
