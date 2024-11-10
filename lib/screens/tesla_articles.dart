import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teslaapi/providers/api_provider.dart';
import 'package:teslaapi/widgets/custom_card.dart';

class TeslaArticles extends StatelessWidget {
  const TeslaArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tesla Articles",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Consumer<TeslaProvider>(
        builder: (BuildContext context, providerObj, Widget? child){
          if(providerObj.teslaModel == null){
            providerObj.getTeslaData();
            return Center(child: CircularProgressIndicator(),);
          }

          List<Map<String, dynamic>> teslaCar = providerObj.teslaModel!.articles;
          return ListView.builder(
              itemCount: teslaCar.length,
              itemBuilder: (context, index) {
                print(teslaCar[index]["title"]);
                return CustomCard(
                    title: teslaCar[index]["title"],
                    description: teslaCar[index]["Description"],
                    urlToImage: teslaCar[index]["ImageUrl"]
                );
              },
          );
        })
    );
  }
}
