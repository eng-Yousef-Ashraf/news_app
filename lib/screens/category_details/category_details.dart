import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/models/source_response.dart';
import 'package:news/widgets/error_widget.dart';
import 'package:news/widgets/loading_widget.dart';
import 'package:news/widgets/source_tab_bar.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_themes.dart';
class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(future: ApiManager.getSources()
        , builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return LoadingWidget();
          }else if(snapshot.hasError){
        return ErrorPopUpWidget(message: 'something went wrong', onPressed:(){
          ApiManager.getSources();
          setState(() {
          });
        });
          }
          if(snapshot.data?.status!='ok'){
            return ErrorPopUpWidget(message:snapshot.data?.message??'something went wrong',
                onPressed:(){
                  ApiManager.getSources();
                  setState(() {
                  });
                }
            );
          }
         return SourceTabBar(sources: snapshot.data!);
        },);
  }
}
