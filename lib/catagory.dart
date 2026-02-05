import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';
import 'background.dart';
import 'navigation.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>{
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
      backgroundColor: Colors.transparent,

      body:CustomScrollView(
        slivers: [
      SliverAppBar(
        expandedHeight: 26,
        pinned: false,
        floating: false,
        backgroundColor: Colors.white,
          
        title: 
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Icon(Icons.arrow_back,color: Colors.purpleAccent,size: 18,fontWeight: FontWeight.bold,),
             SizedBox(width: 4,),
          Text('Back to news', style: TextStyle(color: Colors.purpleAccent,fontWeight: FontWeight.bold, fontSize: 18),),
          ],
      ),

      
          
      ),
      SliverToBoxAdapter(
        child: Padding(padding: 
        EdgeInsets.symmetric(vertical: 50,horizontal: 30),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            TextGradiate(
              text:  Text('Browse by category',style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
             colors: [Colors.purple,Colors.pink],
              gradientType: GradientType.linear,
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  tileMode: TileMode.clamp,
             ),
             Text("Explore news from your favorite topics",style: TextStyle(fontSize: 20, color:const Color.fromARGB(255, 101, 101, 101), fontWeight: FontWeight.bold),)
           
          ],
        ),
        ),
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
                Container(
                  
                  decoration: BoxDecoration(
                    gradient:LinearGradient(colors: [Colors.blue, const Color.fromARGB(255, 113, 193, 209)]) ,
                  ),
                  child:
                  Padding(padding: 
                  EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child:
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Technology',style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),),
                          Text('2 articles',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Icon(Icons.computer,color: const Color.fromARGB(192, 197, 196, 196),size: 48),
                    ],
                  ),
                  ),
                ),
             Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    "Discover the latest technology news and updates",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                   
                  TextButton(
                    onPressed: () {},
                    child: Text(
                    "View all articles",
                 
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.purple,
                    ),
                  ),
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
      
     
      
       
        
        ],
    ),
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
    ),
    );
    
  }
}