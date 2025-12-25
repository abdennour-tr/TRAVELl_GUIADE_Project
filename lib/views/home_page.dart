import 'package:flutter/material.dart';
import '../widgets/place_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage>{
  int selectedIndex = 0;
  final tabs = ["Tout", "Monuments", "Plages", "Montagnes"];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 164, 39),
        title: Row(
          children: [
            Text('AJY',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:  Colors.white,
              fontSize: 40
            ),),
            Text('TSARA',
            
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18,
              color: Colors.white
            ),
            )
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      backgroundColor: const Color.fromARGB(255, 247, 246, 246),
      body: Column(
        children: [
          SizedBox(height: 10),
            Card(
                    child : Padding(
                    padding: EdgeInsets.zero,
                    child: TextField(
                    decoration: InputDecoration(
                        hintText: "Où souhaitez-vous aller ?",
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list_alt),
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                    ),
                    ),
                ),
          elevation: 3,
            ),
            SizedBox(height: 10,)
          ,
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ChoiceChip(
                    label: Text(tabs[i],
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    )),
                    
                    backgroundColor: Colors.white,
                    selectedColor: Colors.orange,
                    selected: selectedIndex == i,
                    onSelected: (_) => setState(() => selectedIndex = i),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15)
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView(
              children: [
                PlaceCard(
                  name: 'menara marrakech',
                  city: 'marrakech',
                  category: 'musem',
                  ImagePath: '../assets/images/menarakech.jpg',
                  rating: '2.1',
                ),
                PlaceCard(
                  name: 'menara marrakech',
                  city: 'marrakech',
                  category: 'musem',
                  ImagePath: '../assets/images/menarakech.jpg',
                  rating: '2.1',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
