import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:promilo_task/core/theme/app_theme.dart';
import 'package:promilo_task/view/widgets/bot_navigation_widget.dart';
import 'package:promilo_task/view/widgets/desc_dotdecrator_widget.dart';
import 'package:promilo_task/view/widgets/desc_icon_widget.dart';
import 'package:promilo_task/view/widgets/desc_imagepageview_widget.dart';
import 'package:promilo_task/view/widgets/desc_row_widget.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Description"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Stack(
                children: [
                  IconWidget(),
                  ImagePageViewWidget(),
                  DotDecoratorWidget()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const RowDescriptionWidget(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Actor Name',
                style: TextStyle(
                  color: AppTheme.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                'Indian Actress',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.black54,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Duration 20 Min',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.wallet,
                    color: Colors.black54,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Total Average Fee ₹9,999',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'About',
                style: TextStyle(
                  color: AppTheme.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  textAlign: TextAlign.justify,
                  "From cardiovascular health to fitness, flexible,balance stress relief, better sleep,increased cognitive perfomance, and more,you can reap all these benefits in just one session out on the waves.so, you may find yourself wondering what are the benefits of going on a surf camp"),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(fontSize: 15, color: AppTheme.button),
                    )),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
