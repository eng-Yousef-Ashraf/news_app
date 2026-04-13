import 'package:flutter/material.dart';
import 'package:news/models/source_response.dart';
import 'package:news/utils/app_themes.dart';
class SourceTabBar extends StatefulWidget {
 final SourceResponse sources;

  const SourceTabBar({super.key,required this.sources});

  @override
  State<SourceTabBar> createState() => _SourceTabBarState();
}

class _SourceTabBarState extends State<SourceTabBar> {
 int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:widget.sources.sources?.length??0
        , child:Column(
      children: [
        TabBar(
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
            indicatorColor: AppTheme.themeMode==ThemeMode.light?Colors.black:Colors.white,
            isScrollable: true,
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            tabs:widget.sources.sources!.map((source) {
          return Text(source.name??'',
          style:selectedIndex==widget.sources.sources!.indexOf(source)?Theme.of(context).textTheme.labelMedium:Theme.of(context).textTheme.labelLarge, );
        },).toList())
      ],
    ));
  }
}
