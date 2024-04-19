import 'package:dash_board/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'body.dart';
import 'generated/assets.dart';

class QuickInvoOld extends StatelessWidget {
  const QuickInvoOld({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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