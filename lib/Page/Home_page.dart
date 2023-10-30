import 'package:flutter/material.dart';

import '../Components/list_item.dart';

const List<String> itemslistword = <String>["Первый", "Второй", "Третий", "Четыертый", "Пятый", "Шестой", "Седьмой"];
const List<String> itemslistnum = <String>["I","II","III","IV","V","VI","VII"];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 57, 56, 51),
          title: const Center(
              child: Text('meow')),
          backgroundColor: Colors.orangeAccent,
        ),


        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                  itemCount: itemslistword.length,
                  itemBuilder: (BuildContext context, int index)

                  {
                    return  ListItem(textItem: itemslistword[index],);
                  }),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemslistnum.length,
                itemBuilder: (BuildContext context, int index,)

                {
                  return ListItem(textItem: itemslistnum[index].toString(),);
                },
              ),
            ),

          ],
        )

    );
  }
}