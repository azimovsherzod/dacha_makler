import '../../../../constans/imports.dart';

class ListingDetailPage extends StatelessWidget {
  const ListingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const ListingCardCustom(),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RatingBar.builder(
                      minRating: 1,
                      direction: Axis.horizontal,
                      ignoreGestures: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (double value) {},
                    ),
                    const Gap(8),
                    const Text('4.5K'),
                  ],
                ),
                const Gap(12),
                Container(
                  padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryColor,
                  ),
                  child: const Text("Oilali",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.only(left: 240.0),
              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.commentsPages);
                },
                child: const Text("Hammasini ko'rish"),
              ),
            ),
            const Gap(12),
            CommentsWidget(),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Billiard',
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                    activeTrackColor: AppColors.primaryColor,
                    activeColor: Colors.white,
                    inactiveThumbColor: Colors.black,
                    inactiveTrackColor: Colors.white,
                    value: true,
                    onChanged: (_) {})
              ],
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Karaoke',
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                    activeTrackColor: AppColors.primaryColor,
                    activeColor: Colors.white,
                    inactiveThumbColor: Colors.black,
                    inactiveTrackColor: Colors.white,
                    value: true,
                    onChanged: (_) {})
              ],
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: AppButton(
                  text: "So'rov yuboring",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: AppButton(
                text: "Komment",
                width: 180,
                height: 50,
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Komment"),
                      actions: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Komment',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                            ),
                          ),
                          maxLines: 5,
                        ),
                        // const Gap(12),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: AppButton(
                            text: "Yuborish",
                            width: 300,
                            height: 50,
                            color: AppColors.primaryColor,
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Gap(12),
            AppButton(
              text: "Shikoyat",
              width: 180,
              height: 50,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Shikoyat"),
                    actions: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Shikoyat',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                        ),
                        maxLines: 5,
                      ),
                      // const Gap(12),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: AppButton(
                          text: "Yuborish",
                          width: 300,
                          height: 50,
                          color: AppColors.primaryColor,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
