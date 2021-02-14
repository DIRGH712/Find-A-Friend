import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

List<String> names = ["Nishita Singh", "Raghav Kumar", "Satyam Jain"];
List<String> bios = [
  "Hello, I am Nishita. I love reading and poetry.",
  "Hello, I am Raghav. I love coding and building things.",
  "Hello, I am Satyam. I love philosophy and sports."
];
List<String> urls = [
  "https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg",
  "https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?cs=srgb&dl=pexels-kelvin-valerio-810775.jpg&fm=jpg"
];

class ShowProfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return UserTile(
            index: index,
          );
        },
        viewportFraction: 0.8,
        scale: 0.9,
        layout: SwiperLayout.TINDER,
        control: SwiperControl(color: Colors.blue),
        pagination: SwiperPagination(
          alignment: Alignment.topCenter,
        ),
        itemHeight: 400,
        itemWidth: 300,
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final index;
  UserTile({this.index});
  @override
  Widget build(BuildContext context) {
    final String name = names[index];
    final String bio = bios[index];
    final String url = urls[index];
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            url,
            height: 200,
            width: 300,
          ),
          Text(
            name,
            style: headlineStyle,
          ),
          Text(
            bio,
            style: contentStyle,
          ),
          RaisedButton(
            child: Text(
              "Connect",
              style: contentStyle,
            ),
            onPressed: () {},
            color: Colors.amber,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          ),
        ],
      ),
    );
  }
}

var headlineStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
var contentStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
);
