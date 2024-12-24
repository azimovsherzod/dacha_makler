import '../../../../constans/imports.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String defaultValue = 'Toshkent';
  List<String> types = [
    'Oilali',
    'Ulfatlar',
    'Qizlar',
    'Kompyuter',
  ];
  List<String> selectedTypes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Page'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.primaryColor),
              child: Center(
                child: const Text(
                  "Saqlash",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const Text('Ism'),
            const Gap(12),
            TextField(
              maxLength: 50,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding: const EdgeInsets.all(12),
              ),
            ),
            const Text('Familiya'),
            const Gap(12),
            TextField(
              maxLength: 50,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding: const EdgeInsets.all(12),
              ),
            ),
            const Text('Price'),
            const Gap(12),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 50,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding: const EdgeInsets.all(12),
              ),
            ),
            const Text("Ta'rif"),
            const Gap(12),
            TextField(
              maxLength: 150,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding: const EdgeInsets.all(12),
              ),
            ),
            const Text('Odam soni'),
            const Gap(12),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 50,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding: const EdgeInsets.all(12),
              ),
            ),
            CheckboxListTile(
              activeColor: Colors.blue,
              title: const Text("All"),
              value: selectedTypes.length == types.length,
              onChanged: (bool? value) {
                setState(() {
                  if (value!) {
                    selectedTypes = List.from(types);
                  } else {
                    selectedTypes.clear();
                  }
                });
              },
            ),
            ...types.map(
              (type) {
                return CheckboxListTile(
                  activeColor: Colors.blue,
                  title: Text(type),
                  value: selectedTypes.contains(type),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value!) {
                        selectedTypes.add(type);
                      } else {
                        selectedTypes.remove(type);
                      }
                    });
                  },
                );
              },
            ).toList(),
            Gap(12),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                value: defaultValue,
                onChanged: (String? newValue) {
                  defaultValue = newValue!;
                },
                items: const [
                  DropdownMenuItem<String>(
                      value: 'Toshkent', child: Text('Toshkent')),
                  DropdownMenuItem<String>(
                      value: 'Chirchu', child: Text('Chirchu')),
                  DropdownMenuItem<String>(
                      value: 'Xokakent', child: Text('Xojakent')),
                  DropdownMenuItem<String>(
                      value: 'Samarqand', child: Text('Samarqand')),
                  DropdownMenuItem<String>(
                      value: 'Buxoro', child: Text('Buxoro')),
                  DropdownMenuItem<String>(
                      value: 'Chinorkent', child: Text('Chinorkent')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
