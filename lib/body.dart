import 'package:dash_board/generated/assets.dart';
import 'package:dash_board/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: AllExpenses(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
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
                          'Quick Invoice',
                          style: kTextStyle20w600(context).copyWith(
                            color: Colors.blue,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.add,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Latest Transactions',
                        style: kTextStyle16w600(context)),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => SizedBox(
                          width: MediaQuery.of(context).size.width * 0.17,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue,
                              child: SvgPicture.asset(
                                Assets.imagesLogo,
                              ),
                            ),
                            title: width > 1300
                                ? Text(
                                    'Marwan Abed',
                                    style: kTextStyle16w600(context),
                                  )
                                : FittedBox(
                                    child: Text(
                                      'Marwan Abed',
                                      style: kTextStyle16w600(context),
                                    ),
                                  ),
                            subtitle: FittedBox(
                              child: Text(
                                'marwanAbed453@gmail.com',
                                style: kTextStyle16w600(context),
                              ),
                            ),
                          ),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        itemCount: 4,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    const Row(
                      children: [
                        CustomDataInput(
                          title: 'Customer Name',
                          hintText: 'Enter customer name',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomDataInput(
                          title: 'Customer Email',
                          hintText: 'Enter customer Email',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        CustomDataInput(
                          title: 'Item Name',
                          hintText: 'Enter Item name',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomDrop(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Add more details',
                            style: kTextStyle16w600(context).copyWith(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Send Money',
                              style: kTextStyle16w600(context).copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDataInput extends StatelessWidget {
  const CustomDataInput({
    super.key,
    required this.title,
    required this.hintText,
  });

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTextStyle14w400(context).copyWith(
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: kTextStyle14w400(context).copyWith(
                  color: Colors.grey.withOpacity(0.5),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: InputBorder.none),
          ),
        ],
      ),
    );
  }
}

class AllExpenses extends StatelessWidget {
  const AllExpenses({
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

class CustomDrop extends StatelessWidget {
  const CustomDrop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: 'All Time',
      // Change this to match one of the DropdownMenuItem values
      items: const [
        DropdownMenuItem(
          value: 'All Time',
          child: Text('All Time'),
        ),
        DropdownMenuItem(
          value: 'Last 7 days',
          child: Text('Last 7 days'),
        ),
        DropdownMenuItem(
          value: 'Last 30 days',
          child: Text('Last 30 days'),
        ),
        DropdownMenuItem(
          value: 'Last 90 days',
          child: Text('Last 90 days'),
        ),
      ],
      onChanged: (value) {},
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
                  Assets.transaction,
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
