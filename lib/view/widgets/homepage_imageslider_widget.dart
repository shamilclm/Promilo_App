import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_task/core/theme/app_theme.dart';

final imageProvider = StateProvider<int>((ref) => 0);

class HomePageImageSliderWidget extends ConsumerWidget {
  const HomePageImageSliderWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.watch(imageProvider);
    final pageController = PageController(initialPage: currentIndex);
    final List<String> imageUrls = [
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
      'https://s39613.pcdn.co/wp-content/uploads/2019/06/rights-and-responsibilities-for-group-members-062819-2.jpg',
      'https://www.marketing91.com/wp-content/uploads/2021/02/What-is-Group.jpg',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      child: SizedBox(
        height: 230,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) => currentIndex = index,
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        bottom: 40,
                        left: 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Popular Meetups',
                                style: TextStyle(color: AppTheme.submitBtn)),
                            Text('India',
                                style: TextStyle(color: AppTheme.submitBtn)),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  imageUrls.length,
                  (index) => InkWell(
                    onTap: () => pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                    ),
                    child: DotsIndicator(
                      dotsCount: 1,
                      position: 0,
                      decorator: DotsDecorator(
                        color: AppTheme.black,
                        activeColor: index == currentIndex
                            ? AppTheme.black
                            : AppTheme.grey,
                        size: const Size.square(8),
                        activeSize: const Size(8, 8),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
