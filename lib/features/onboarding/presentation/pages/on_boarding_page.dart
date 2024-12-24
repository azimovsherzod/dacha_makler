
import '../../../../constans/imports.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(0),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(LocalImages.home1),
                ),
              ),
              const Gap(10),
              Text(
                'Orzuingizdagi dachani toping – eng yaxshi takliflar sizni kutmoqda'.tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(16),
              Padding(
                padding: const EdgeInsets.only(bottom: 150.0),
                child: Text(
                  'Bizning platformamiz dachalar sotib olish va ijaraga olish uchun qulay qidiruv imkoniyatlarini taqdim etadi. Sizga mos joyni tez va oson toping!'.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: AppColors.textGrey),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 35),
        child: AppButton(
          height: 55,
            itemsAlignment: MainAxisAlignment.center,
            color: AppColors.primaryColor,
            text: 'Boshlash'.tr,
            textStyle: const TextStyle(fontSize: 17,color: Colors.white),
            onTap: () {
              Get.offAllNamed(Routes.home);
            }),
      ),
    );
  }
}
