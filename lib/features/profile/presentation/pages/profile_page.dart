import '../../../../constans/imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int defaultValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () => Get.toNamed(Routes.profileDetail),
              child: GestureDetector(
                onTap: () => Get.toNamed(Routes.editPage),
                child: SvgPicture.asset(
                  LocalIcons.edit,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(LocalImages.person2, height: 150, width: 150),
                      Text(
                        "Makler",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
                const Gap(12),
                const ProfileInfoItem(value: "Shahzod", label: "Name"),
                const ProfileInfoItem(value: "Omonboev", label: "Surname"),
                const ProfileInfoItem(value: "+998973478753", label: "Number"),
                const Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Dachalar ro'yxati",
                        style: TextStyle(fontSize: 20)),
                    SvgPicture.asset(LocalIcons.plus, height: 20),
                  ],
                ),
                const Gap(12),
                const ListingCardProfile(),
                const Gap(12),
                Row(
                  children: [
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: AppButton(text: "Logout", onTap: () {}),
                    ),
                    const Gap(25),
                    SizedBox(
                      width: 180,
                      child: AppButton(
                        text: "Time",
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Vaqtni tanlang"),
                              actions: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButtonFormField<int>(
                                    isExpanded: true,
                                    value: defaultValue,
                                    onChanged: (int? newValue) {
                                      setState(() {
                                        defaultValue = newValue!;
                                      });
                                    },
                                    items: const [
                                      DropdownMenuItem<int>(
                                          value: 20, child: Text('20')),
                                      DropdownMenuItem<int>(
                                          value: 25, child: Text('25')),
                                      DropdownMenuItem<int>(
                                          value: 30, child: Text('30')),
                                      DropdownMenuItem<int>(
                                          value: 35, child: Text('35')),
                                      DropdownMenuItem<int>(
                                          value: 40, child: Text('40')),
                                      DropdownMenuItem<int>(
                                          value: 50, child: Text('50')),
                                    ],
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            8.0), // Скругление углов
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: AppButton(
                                    text: "O'zgartirmoq",
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
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
