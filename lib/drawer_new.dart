import 'package:dash_board/generated/assets.dart';
import 'package:dash_board/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'models.dart';

class DrawerNew extends StatefulWidget {
  const DrawerNew({super.key});

  @override
  State<DrawerNew> createState() => _DrawerNewState();
}

class _DrawerNewState extends State<DrawerNew> {
  final List<RowInfoModel> info = [
    RowInfoModel(title: 'Dashboard', image: Assets.imagesCategory2),
    RowInfoModel(title: 'My Transactions', image: Assets.transaction),
    RowInfoModel(title: 'Statistics', image: Assets.statics),
    RowInfoModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    RowInfoModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.white,
      shape: InputBorder.none,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ProfileInfo(),
              ],
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: RowInfo(
                  title: info[index].title,
                  image: info[index].image,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
            itemCount: info.length,
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                RowInfo(title: 'Setting system', image: Assets.imagesSetting2),
                RowInfo(
                  title: 'Logout account',
                  image: Assets.imagesLogout,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowInfo extends StatelessWidget {
  const RowInfo({
    super.key,
    required this.title,
    required this.image,
    this.isSelected = false,
  });

  final String title;
  final String image;

  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        image,
      ),
      title: Text(
        title,
        style: kTextStyle16Regular(context),
      ),
      trailing: isSelected!
          ? Container(
              width: 3.27,
              height: 30,
              decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
            )
          : null,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          Assets.imagesLogo,
        ),
        title: Text(
          'Leka Okeowo',
          style: kTextStyle16SemiBold(context),
        ),
        subtitle: width > 1000
            ? Text(
                'Marwanabed453@gmail.com',
                style:
                    kTextStyle12Regular(context).copyWith(color: Colors.grey),
              )
            : FittedBox(
                child: Text(
                  'Marwanabed453@gmail.com',
                  style:
                      kTextStyle12Regular(context).copyWith(color: Colors.grey),
                ),
              ),
      ),
    );
  }
}
