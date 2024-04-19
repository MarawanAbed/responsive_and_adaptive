import 'package:dash_board/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'body.dart';
import 'generated/assets.dart';

class ExpensesOld extends StatelessWidget {
  const ExpensesOld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'All Expenses',
                style: kTextStyle20w600(context).copyWith(
                  color: Colors.blue,
                ),
              ),
              const Spacer(),
              const CustomDrop(),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const ExpensesItems(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}


class ExpensesItems extends StatelessWidget {
  const ExpensesItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightBlue,
                child: SvgPicture.asset(
                  Assets.convertCard,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Balanced',
            style: kTextStyle16w600(context).copyWith(
              color: Colors.white,
            ),
          ),
          Text(
            'April 2021',
            style: kTextStyle14w400(context).copyWith(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$ 2,500.00',
            style: kTextStyle24w600(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}