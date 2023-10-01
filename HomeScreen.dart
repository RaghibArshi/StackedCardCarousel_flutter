import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

import 'FancyCard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Replace this function with actual API data fetching logic.
    List<MyDataModel> fetchDataFromApi() {
      // Simulate fetching data from an API.
      return [
        MyDataModel("assets/picture2.png", "Happiness Is Laughing"),
        MyDataModel("assets/picture4.png", "Morning Vibes Are Good"),
        MyDataModel("assets/picture5.png", "Always Dream Big"),
        MyDataModel("assets/picture6.png", "Walk Daily"),
        MyDataModel("assets/picture7.png", "Work Life Balance"),
        MyDataModel("assets/picture8.png", "Books Are Awesome"),
        MyDataModel("assets/picture9.png", "Art & Artist"),
        MyDataModel("assets/picture10.png", "Friends Are Family"),
        MyDataModel("assets/picture11.png", "Vegetarian Diet"),
        MyDataModel("assets/picture12.png", "Walk In Space"),
        // Add more data here...
      ];
    }

    // Fetch data from your API (you can use packages like http or dio).
    // For this example, I'll use a mock list of data.
    final List<MyDataModel> dataFromApi = fetchDataFromApi();


    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Stacked Card Carousel'),
      ),
      body: StackedCardCarousel(
        items: dataFromApi.map((data) {
          return FancyCard(
            image: data.imagePath,
            title: data.title,
          );
        }).toList(),
      ),
    );
  }
}

class MyDataModel {
  final String imagePath;
  final String title;

  MyDataModel(this.imagePath, this.title);
}
