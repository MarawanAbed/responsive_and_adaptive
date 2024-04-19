import 'package:dash_board/generated/assets.dart';
import 'package:dash_board/style.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LeftNew extends StatelessWidget {
  const LeftNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
        top: 20.0,
        bottom: 20.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Card',
                    style: kTextStyle20SemiBold(context),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ExpandablePageView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MyCard(),
                      MyCard(),
                      MyCard(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SmoothPageIndicator(
                    controller: PageController(viewportFraction: 0.5),
                    count: 3,
                    effect: const WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Transactions History',
                        style: kTextStyle16SemiBold(context),
                      ),
                      const Spacer(),
                      Text(
                        'View All',
                        style: kTextStyle12Regular(context).copyWith(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) => const Info(),
                    itemCount: 3,
                    shrinkWrap: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Income',
                        style: kTextStyle20SemiBold(context),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFF1F1F1)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Monthly',
                              style: kTextStyle16Medium(context),
                            ),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: PieChart(
                            PieChartData(
                              sectionsSpace: 0,
                              sections: [
                                PieChartSectionData(
                                  showTitle: false,
                                  color: Colors.blue,
                                  value: 40,
                                  radius: 50,
                                ),
                                PieChartSectionData(
                                  showTitle: false,
                                  color: Colors.lightBlue,
                                  value: 25,
                                  radius: 50,
                                ),
                                PieChartSectionData(
                                  showTitle: false,
                                  color: const Color(0xFFB4C2F3),
                                  value: 20,
                                  radius: 50,
                                ),
                                PieChartSectionData(
                                  showTitle: false,
                                  color: Colors.grey,
                                  value: 22,
                                  radius: 50,
                                ),
                              ],
                            ),
                            swapAnimationDuration:
                                const Duration(milliseconds: 150),
                            // Optional
                            swapAnimationCurve: Curves.linear, // Optional
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => IntrinsicWidth(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                radius: 5,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    color: Colors.lightBlue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              title: Text(
                                'Freelance',
                                style: kTextStyle16Regular(context),
                              ),
                              trailing: Text(
                                '% 25',
                                style: kTextStyle16Regular(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Cash Withdrawal',
        style: kTextStyle16SemiBold(context),
      ),
      subtitle: Text(
        '13 May 2021',
        style: kTextStyle12Regular(context),
      ),
      trailing: Text(
        '\$ 1200',
        style: kTextStyle16SemiBold(context).copyWith(
          color: Colors.red,
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assets.imagesMask),
        ),
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name Card',
                style:
                    kTextStyle16Regular(context).copyWith(color: Colors.white),
              ),
              const Spacer(),
              SvgPicture.asset(
                Assets.convertCard,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Marwan Abed',
            style: kTextStyle20Medium(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Spacer(),
              Text(
                '**** **** **** 1234',
                style:
                    kTextStyle20Medium(context).copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Spacer(),
              Text(
                '12/20 - 124',
                style:
                    kTextStyle16Regular(context).copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
