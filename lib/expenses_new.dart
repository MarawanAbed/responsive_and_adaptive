import 'package:dash_board/expenses_items_model.dart';
import 'package:dash_board/generated/assets.dart';
import 'package:dash_board/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesNew extends StatefulWidget {
  const ExpensesNew({super.key});

  @override
  State<ExpensesNew> createState() => _ExpensesNewState();
}

class _ExpensesNewState extends State<ExpensesNew> {
  final List<ExpensesModel> models = [
    ExpensesModel(
      title: 'Balanced',
      date: 'April 2021',
      amount: '2,500.00',
      logo: Assets.imagesWallet2,
    ),
    ExpensesModel(
      title: 'Income',
      date: 'April 2023',
      amount: '2,500.00',
      logo: Assets.imagesCategory2,
    ),
    ExpensesModel(
      title: 'Expenses',
      date: 'April 2022',
      amount: '2,500.00',
      logo: Assets.transaction,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'All Expenses',
                style: kTextStyle20SemiBold(context),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
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
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: ExpensesItem(
                    title: models[0].title,
                    date: models[0].date,
                    amount: models[0].amount,
                    logo: models[0].logo,
                    isSelected: selectedIndex == 0,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: ExpensesItem(
                    title: models[1].title,
                    date: models[1].date,
                    amount: models[1].amount,
                    logo: models[1].logo,
                    isSelected: selectedIndex == 1,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: ExpensesItem(
                    title: models[2].title,
                    date: models[2].date,
                    amount: models[2].amount,
                    logo: models[2].logo,
                    isSelected: selectedIndex == 2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.logo,
    required this.title,
    required this.date,
    required this.amount,
    this.isSelected,
  });

  final String logo;
  final String title;
  final String date;
  final String amount;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected! ? Colors.blue : Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  logo,
                  color: Colors.white,
                ),
              ),
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
            title,
            style: kTextStyle16SemiBold(context)
                .copyWith(color: isSelected! ? Colors.white : Colors.black),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            date,
            style: kTextStyle14Regular(context)
                .copyWith(color: Colors.grey.withOpacity(0.5)),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            '\$ $amount',
            style:
                kTextStyle24SemiBold(context).copyWith(color: Colors.lightBlue),
          ),
        ],
      ),
    );
  }
}
