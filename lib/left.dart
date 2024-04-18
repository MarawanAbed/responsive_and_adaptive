import 'package:dash_board/generated/assets.dart';
import 'package:dash_board/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Left extends StatelessWidget {
  const Left({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: MyCardDetails(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Income',
                          style: kTextStyle16w600(context)
                              .copyWith(color: Colors.blue),
                        ),
                        const Spacer(),
                        DropdownButton<String>(
                          items: const [
                            DropdownMenuItem(
                              value: 'This Month',
                              child: Text('This Month'),
                            ),
                            DropdownMenuItem(
                              value: 'Last Month',
                              child: Text('Last Month'),
                            ),
                          ],
                          onChanged: (value) {},
                          hint: const Text('This Month'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: Colors.blue,
                              value: 40,
                              title: '40%',
                              radius: 50,
                            ),
                            PieChartSectionData(
                              color: Colors.green,
                              value: 30,
                              title: '30%',
                              radius: 50,
                            ),
                            PieChartSectionData(
                              color: Colors.red,
                              value: 30,
                              title: '30%',
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCardDetails extends StatelessWidget {
  const MyCardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Card',
              style: kTextStyle16w600(context).copyWith(color: Colors.blue),
            ),
            const SizedBox(height: 10),
            const MyCard(),
            const SizedBox(height: 10),
            SmoothPageIndicator(
                controller: PageController(), // PageController
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue,
                  dotHeight: 5,
                  radius: 5,
                  dotWidth: 5,
                ), // your preferred effect
                onDotClicked: (index) {}),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Transactions History',
                  style: kTextStyle14w400(context).copyWith(color: Colors.blue),
                ),
                const Spacer(),
                Text(
                  'View All',
                  style: kTextStyle12w400(context).copyWith(color: Colors.blue),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              '13 May 2021',
              style: kTextStyle12w400(context).copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const PaymentDetails(
              title: 'Payment Received',
              date: '13 May 2021',
              amount: '1200',
            ),
            const SizedBox(height: 10),
            const PaymentDetails(
              title: 'Payment Received',
              date: '13 May 2021',
              amount: '1200',
            ),
            const SizedBox(height: 10),
            const PaymentDetails(
              title: 'Payment Received',
              date: '13 May 2021',
              amount: '1200',
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
  });

  final String title;
  final String date;
  final String amount;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kTextStyle16w600(context).copyWith(color: Colors.blue),
              ),
              const SizedBox(height: 3),
              Text(
                date,
                style: kTextStyle12w400(context).copyWith(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          Expanded(
            child: width > 1300
                ? Text(
                    '\$ $amount',
                    style:
                        kTextStyle16w600(context).copyWith(color: Colors.blue),
                  )
                : FittedBox(
                    child: Text(
                      '\$ $amount',
                      style: kTextStyle16w600(context)
                          .copyWith(color: Colors.blue),
                    ),
                  ),
          )
        ],
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
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Number',
                    style:
                        kTextStyle12w400(context).copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Marwan Abed',
                    style:
                        kTextStyle16w600(context).copyWith(color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                Assets.transaction,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              const Spacer(),
              Text(
                '**** **** **** 1234',
                style: kTextStyle16w600(context).copyWith(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              Text(
                '12/24 - 124',
                style: kTextStyle12w400(context).copyWith(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
