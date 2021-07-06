import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg',
    'https://wallpaperaccess.com/full/30100.jpg',
    'https://cdn.wallpapersafari.com/26/17/DhbKur.jpg',
    'https://wallpaperaccess.com/full/26164.png',
    'https://store.hp.com/app/assets/images/uploads/prod/25-best-hd-wallpapers-laptops159561982840438.jpg',
    'https://newevolutiondesigns.com/images/freebies/cool-wallpaper-3.jpg',
    'https://pbs.twimg.com/media/EwhwES1VkAk_f3C.jpg',
    'https://lh3.googleusercontent.com/proxy/GNR2Wyf6oOmF-PU7wXn3FIIRIXMIxMOTKRpYFcSm8gUVBxDSLDjoiHYwU1n02qDSARTLnWaE7I2JKbkTRX0DsfKwpDjR2INF1Vj8NHT9KhbA-dF5QrAuUKRjECo-riedcdRypCgChmZGMHa1apL8hppzc0KxJyKa',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBZCBJXHBT7lx5zQuDW46mjfrTr9dIV1cErFGUuZO7cH1vKdbLhAVvkwX36uouXafinUI&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(14),
        child: new StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: imageList[index],
                    fit: BoxFit.cover,),
                ),
              );
            }, staggeredTileBuilder: (index) {
              return new StaggeredTile.count(1, index.isEven ? 1.2 : 1.0);
            }),
      ),
    );
  }
}
