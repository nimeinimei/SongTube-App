// Flutter
import 'package:flutter/material.dart';

// Internal
import 'package:songtube/screens/mediaScreen/downloadsTab.dart';
import 'package:songtube/screens/mediaScreen/musicTab.dart';
import 'package:songtube/screens/mediaScreen/videosTab.dart';

// Packages
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

// UI
import 'package:songtube/ui/animations/showUp.dart';

class MediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: ShowUpTransition(
            forward: true,
            duration: Duration(milliseconds: 400),
            slideSide: SlideFromSlide.TOP,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(18),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Icon(
                        EvaIcons.musicOutline,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Text(
                      "Media",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "YTSans",
                        color: Theme.of(context).textTheme.bodyText1.color
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Varela',
              fontWeight: FontWeight.w500
            ),
            labelColor: Theme.of(context).textTheme.bodyText1.color,
            unselectedLabelColor: Theme.of(context).textTheme.bodyText1.color,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Theme.of(context).accentColor,
            tabs: [
              ShowUpTransition(
                forward: true,
                delay: Duration(milliseconds: 200),
                duration: Duration(milliseconds: 200),
                slideSide: SlideFromSlide.BOTTOM,
                child: Tab(child: Text(
                  "Downloads",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Varela',
                    color: Theme.of(context).iconTheme.color
                  ),
                )),
              ),
              ShowUpTransition(
                forward: true,
                delay: Duration(milliseconds: 200),
                duration: Duration(milliseconds: 200),
                slideSide: SlideFromSlide.BOTTOM,
                child: Tab(child: Text(
                  "Music",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Varela',
                    color: Theme.of(context).iconTheme.color
                  ),
                )),
              ),
              ShowUpTransition(
                forward: true,
                delay: Duration(milliseconds: 200),
                duration: Duration(milliseconds: 200),
                slideSide: SlideFromSlide.BOTTOM,
                child: Tab(child: Text(
                  "Videos",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Varela',
                    color: Theme.of(context).iconTheme.color
                  ),
                )),
              )
            ],
          ),
        ),
        body: ShowUpTransition(
          forward: true,
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 300),
          slideSide: SlideFromSlide.BOTTOM,
          child: TabBarView(
            children: [
              MediaDownloadTab(),
              MediaMusicTab(),
              MediaVideoTab()
            ],
          ),
        ),
      ),
    );
  }
}