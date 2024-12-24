import 'package:dacha_makler/core/widgets/default_bottom_bar.dart';

import '../../../../constans/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> cities = ['Toshkent', 'Chirchuq', 'Xojakent', 'Qoronqul'];
  String selectedCity = 'Toshkent';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              HeaderWidget(
                selectedCity: selectedCity,
                cities: cities,
                onCityChanged: (newCity) {
                  setState(() {
                    selectedCity = newCity;
                  });
                },
              ),
              Gap(12),
              const CustomSearchContainer(),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "Yaqin atrofdagi ro'yxatlar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListingCard(),
              const ListingCard(),
              const ListingCard(),
              const ListingCard(),
              const ListingCard(),
              const ListingCard(),
            ],
          ),
        ),
        bottomNavigationBar: DefaultBottomBar());
  }
}
