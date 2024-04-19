import 'package:flutter/material.dart';
import 'package:promilo_task/core/theme/app_theme.dart';
import 'package:promilo_task/view/widgets/bot_navigation_widget.dart';
import 'package:promilo_task/view/widgets/homepage_imageslider_widget.dart';
import 'package:promilo_task/view/widgets/toptrending_image_widget.dart';
import 'package:promilo_task/view/widgets/trendingcard_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Individual meetup"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.mic_none),
                      labelText: "Search",
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const HomePageImageSliderWidget(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Trending popular people",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.text),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 230, child: CardWidget()),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Top Trending meetups",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.text)),
              ),
              TopImageWidget()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
