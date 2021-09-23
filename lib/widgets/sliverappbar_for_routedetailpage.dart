import 'package:flutter/material.dart';
import 'package:gb_app_ui/models/my_route.dart';
import 'package:gb_app_ui/pages/routes_page.dart';

class SliverAppBarForRouteDetailPage extends StatelessWidget {
  MyRoute myRoute;
  SliverAppBarForRouteDetailPage({Key? key, required this.myRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      //shape: RoundedRectangleBorder( borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)) ,
                  image: DecorationImage(
                      image: AssetImage(myRoute.imageUrl),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)) ,
                ),
              ),
            ),
            Positioned(
              bottom: 15.0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: _buildRouteTypeIcon(),
                    ),
                    SizedBox(width: 180,),
                    Container(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.star_border_outlined, color: Colors.white, size: 24.0),
                          Icon(Icons.star_border_outlined, color: Colors.white, size: 24.0),
                          Icon(Icons.star_border_outlined, color: Colors.white, size: 24.0),
                          Icon(Icons.star_border_outlined, color: Colors.white, size: 24.0),
                          Icon(Icons.star_border_outlined, color: Colors.white, size: 24.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              right: 10.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.format_list_numbered_outlined),
                        color: Colors.black,
                        onPressed: () {},
                        iconSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.share),
                        color: Colors.black,
                        onPressed: () {},
                        iconSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.download_outlined),
                        color: Colors.black,
                        onPressed: () {},
                        iconSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Icon _buildRouteTypeIcon() {
    if(myRoute.myRouteType == MyRouteType.bike){
      return Icon(Icons.directions_bike_rounded, color: Colors.white, size: 24.0);
    }
    else if(myRoute.myRouteType == MyRouteType.car){
      return Icon(Icons.car_rental, color: Colors.white, size: 24.0);
    }
    return Icon(Icons.directions_walk_rounded, color: Colors.white, size: 24.0);
  }

}
