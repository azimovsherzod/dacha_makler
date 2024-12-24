import '../../constans/imports.dart';

class DefaultBottomBar extends StatelessWidget {
  const DefaultBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.home);
            },
            icon: SvgPicture.asset(
              LocalIcons.home,
              width: 30,
            ),
          ),
          const Gap(12),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(LocalIcons.heart,
                width: 30, color: AppColors.primaryColor),
          ),
          const Gap(12),
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.groupPage);
            },
            icon: SvgPicture.asset(LocalIcons.human,
                width: 30, color: AppColors.primaryColor),
          ),
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.profilePage);
              },
              icon: Icon(Icons.person, size: 30, color: AppColors.primaryColor))
        ],
      ),
    );
  }
}
