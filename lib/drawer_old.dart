import 'package:dash_board/generated/assets.dart';
import 'package:dash_board/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class DrawerOld extends StatelessWidget {
  const DrawerOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.2,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                top: 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
              ),
              child: const Icon(Icons.image),
            ),
            const SizedBox(
              height: 20,
            ),
            const Profile(),
            const SizedBox(
              height: 20,
            ),
            BuildRow(
              style: kTextStyle16w700(context).copyWith(
                color: Colors.blue,
              ),
              title: 'Dashboard',
              image: Assets.imagesCategory2,
            ),
            const SizedBox(
              height: 30,
            ),
            BuildRow(
              style: kTextStyle16w600(context).copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
              title: 'My Transactions',
              image: Assets.imagesChart2,
            ),
            const SizedBox(
              height: 30,
            ),
            BuildRow(
              style: kTextStyle12w400(context).copyWith(
                color: Colors.blue,
              ),
              title: 'Statics',
              image: Assets.statics,
            ),
            const SizedBox(
              height: 30,
            ),
            BuildRow(
              style: kTextStyle16w600(context).copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
              title: 'My Investment',
              image: Assets.transaction,
            ),
            const SizedBox(
              height: 30,
            ),
            const Spacer(),
            BuildRow(
              style: kTextStyle16w600(context).copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
              title: 'settings system',
              image: Assets.imagesSetting2,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: BuildRow(
                style: kTextStyle16w600(context).copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
                title: 'Logout account',
                image: Assets.imagesLogout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildRow extends StatelessWidget {
  const BuildRow({
    super.key,
    required this.title,
    required this.image,
    required this.style,
  });

  final String title;
  final String image;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          image,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            title,
            style: style,
          ),
        )
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 16,
          child: SvgPicture.asset(
            'assets/images/logo.svg',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  'Lekan Okeowo',
                  style: kTextStyle16w600(context).copyWith(
                    color: Colors.blue,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  'marwanabed@gmail.com',
                  style: kTextStyle12w400(context).copyWith(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}