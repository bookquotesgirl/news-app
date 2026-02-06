import 'package:flutter/material.dart';
import 'background.dart';
import 'navigation.dart';
import 'news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class CategoryHeader extends SliverPersistentHeaderDelegate{
  @override
  double get minExtent=>60;

  @override
double get maxExtent=>60;

  @override
Widget build(
  BuildContext context,
  double shrinkOffset,
  bool overlapsContent,
){
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    alignment: Alignment.centerLeft,
    
    child:  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: 
    Row(
      children: [
      _chip("All",selected: true),
      _chip("Technology",selected: false),
      _chip("Sports",selected: false),
      _chip("Entertainment",selected: false),
      _chip("Politics",selected: false),
      _chip("Health",selected: false),


    ],
    ),
    ),
  );
}
Widget _chip(String text, {bool selected=false}){
  return Padding(padding: const EdgeInsets.only(right: 8),
  child: Chip(label: Text(text),
  
  backgroundColor: selected? const Color.fromARGB(213, 233, 30, 182): Colors.grey.shade200,),
  );
}
@override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate){
  return false;
}
}
class _HomePageState extends State<HomePage>{
  int? _hoveredIndex;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: 
    (context,constraints){
      final isMobile=constraints.maxWidth<600;
      final isTablet=constraints.maxWidth>=600 &&constraints.maxWidth<1024;

      return _buildScaffold(context,isMobile,isTablet);
    },
    );
  }
  Widget _buildScaffold(BuildContext context,bool isMobile,bool isTablet){
    return BackgroundGradient(
    child: Scaffold(

      body:CustomScrollView(
        slivers: [
         SliverAppBar(
        expandedHeight: 260,
        pinned: false,
        floating: false,
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
          background:  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.purple,Colors.pink],
            begin: Alignment.topLeft, 
              end: Alignment.bottomRight, 
              
          ),
        ),
      
       child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
           Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
             Icon(Icons.newspaper_outlined,color: Colors.white,size: 48,),
            SizedBox(width: 4,),
          Text('NewsHub', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: isMobile ?32: 48),),
          ],
      ),
      SizedBox(height: 10,),

      Text("Your trusted source for breaking news and stories",
      textAlign: TextAlign.center,
      maxLines: 2, 
        overflow: TextOverflow.ellipsis,
      style: TextStyle(color: Color(0xFFF3F4F6),fontSize: isMobile ?16: 22,),
      ),
          ],
      ),
       ), 
      ),
          ),
         
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: CategoryHeader(),
        ),
        SliverToBoxAdapter(
          child: Padding(padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.trending_up, size: 24,color: Color(0XFF9333EA),),
              SizedBox(width: 6,),
              Expanded(child: 
              Text("Latest News (6 articles)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),
              
             ),
            ],
          ),),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return 
            MouseRegion(
              onEnter: (_) => setState(() 
                =>_hoveredIndex=index),
                onExit: (_) => setState(() 
                  =>_hoveredIndex=null
                ),
              
           
                child: 
                AnimatedContainer( // Animates the card properties smoothly
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          transform: Matrix4.identity()..translate(0.0, _hoveredIndex==index?-4:0), 
                        child: 
                        InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder:( _)=>const NewsDetailPage(),
                            ),
                            );
                          },
                          child: 
           Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            elevation:_hoveredIndex==index ? 10: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    
                SizedBox(
              height: isMobile ? 160: 180,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: AnimatedScale(scale: _hoveredIndex==index ? 1.08:1.0, 
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              child: FadeInImage.assetNetwork(
                placeholder: 
                  "../assets/images/news.jpg",
                  image:'https://wallpapers.com/images/featured/information-technology-nucb4z97b3q78mjk.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,

              child: 
              
              Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          
                             gradient: LinearGradient(colors:[const Color.fromARGB(199, 155, 39, 176),Colors.pink],
            begin: Alignment.topLeft, 
              end: Alignment.bottomRight, 
              
          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Technology",
                          style: TextStyle(fontSize: 12,color: Colors.white),
                        ),
                      ),

            ),
                  ],
            ),
             Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    "Breaking: Major Tech Company Announces Revolutionary AI",
                    
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: isMobile ? 16: 18,
                      fontWeight: FontWeight.bold,
                      color: _hoveredIndex==index ? Colors.purpleAccent : Colors.black
                    ),
                  ),

                  const SizedBox(height: 8),
                   
                  Text(
                    "This is a short preview of the article content to give users an idea of what the news is about.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today,size: 12,color: const Color.fromARGB(255, 146, 145, 145),),
                          SizedBox(width: 6,),
                       Text(
                        "January 29,2026",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 146, 145, 145),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                        ],
                      ),
                      Spacer(),
                      Flexible(child:
                       Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person_3_outlined,size: 12,color: const Color.fromARGB(255, 146, 145, 145),),
                          SizedBox(width: 6,),
                       Text(
                        "Sarah McKenny",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 146, 145, 145),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                        ],
                      ),
                      ),
                    ],
                  ),
              ],
            ),
             ),
              ],
             ),
          )
                        ),
                ),
          );
        },
        childCount: 6,
        ),
        ),
        SliverToBoxAdapter(
child: 
                   SizedBox(height: 50,),
        ),
        SliverToBoxAdapter(
          child: 
        Container(
          color: Color(0Xff111827),
          child: Padding(padding: 
          EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Icon(Icons.newspaper_outlined,color: Colors.white, size: 18),
                  SizedBox(width: 6,),
                  Text('NewsHub',style: TextStyle(fontSize: 18, color: Colors.white),),
                ],
              ),
                   SizedBox(height: 8,),
                  Text('Stay informed. Stay ahead.',style: TextStyle(fontSize: 14, color: Color(0XFFF3F4F6)),),
                   SizedBox(height: 16,),
                  Row(
                mainAxisSize: MainAxisSize.min,

                    children: [
                  Icon(Icons.copyright_outlined,color: Colors.white, size: 18),
                  Text('2026 NewsHub. All rights reserved.',style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 232, 233, 234)),),
                 ], ),
                ],
              )
            
          ),
          )),
        
        
        ],
    ),
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
    ),
    );
    
  }
}