import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/product_model.dart';

class SaveDemo extends StatelessWidget {
  const SaveDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Save",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.notification_important,
                color: Colors.black,
              )
            ],
          )),
      //ahfdhgdhdgklhgklhklg
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.85,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.network(
                            " ${productList[index].courseLogo}",
                            // height: 110,
                            // width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        //backgroundColor: Colors.transparent,
                        //backgroundImage: NetworkImage(
                        //   " ${productList[index].courseLogo}",
                        //   // height: 110,
                        //   // width: double.infinity,
                        //   // fit: BoxFit.cover,
                        // ),
                        //backgroundColor: Colors.transparent,
                        radius: 20,
                      ),
                      title: Text("${productList[index].courseName}"),
                      subtitle: Text("${productList[index].courseDuration}"),
                      //trailing: Text("${productList[index].courseDesc}"),
                    ),
                    Row(
                      children: [
                        Expanded(flex: 1, child: Column()),
                        Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Text("${productList[index].courseDesc}")
                              ],
                            )),
                      ],
                    ),

                    // ClipRRect(
                    //   borderRadius: BorderRadius.vertical(
                    //     top: Radius.circular(20),
                    //   ),
                    //   child: Image.network(
                    //     productList[index].courseImg!,
                    //     height: 110,
                    //     width: double.infinity,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
