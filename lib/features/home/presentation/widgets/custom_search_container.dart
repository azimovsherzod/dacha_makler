import '../../../../constans/imports.dart';

class CustomSearchContainer extends StatelessWidget {
  final IconData leftIcon;
  final String placeholderText;

  const CustomSearchContainer({
    super.key,
    this.leftIcon = Icons.search,
    this.placeholderText = "Manzil, shahar yoki pochta indeksini qidiring",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 20, 12, 0),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xFFF2F4FD),
      ),
      child: GestureDetector(
        onTap: () {
          showSearch(
            context: context,
            delegate: CustomSearchDelegate(
              searchTerms: [
                "Toshkent",
                "Chirchiq",
                "Qoranqul",
                "Samarqand",
                "Buxoro"
              ],
            ),
          );
        },
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              SvgPicture.asset(
                LocalIcons.search,
                width: 24,
                height: 24,
                color: Colors.black54,
              ),
              const SizedBox(width: 12),
              Text(
                placeholderText,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
