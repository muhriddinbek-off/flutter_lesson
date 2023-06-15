import 'package:flutter/material.dart';

class MyListSeperate extends StatefulWidget {
  const MyListSeperate({super.key});

  @override
  State<MyListSeperate> createState() => _MyListSeperateState();
}

class _MyListSeperateState extends State<MyListSeperate> {
  TextEditingController controller = TextEditingController();
  List list = [];
  Widget card(BuildContext context, int index) {
    int a = index+1;
    return ListTile(
      leading: Text('$a', style: TextStyle(fontSize: 30)),
      title: Text(list[index], style: TextStyle(fontSize: 30)),
      trailing: TextButton(onPressed: (){
        setState(() {
          
        });
        list.remove(list[index]);
      }, child: Icon(Icons.delete, size: 30,)),
    );
  }

  Widget seperator(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        children: [],
      ),
    );
  }

  void func() {
    setState(
      () {
        if (controller.text != ''){
          list.add(controller.text);
          controller.text = '';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
          child: Row(
            children: [
              Container(
                width: 240,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 64,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: func,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: card,
        separatorBuilder: seperator,
        itemCount: list.length,
      ),
    );
  }
}

void main () {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyListSeperate(),
  ));
}