import 'package:flutter/material.dart';
import 'package:newsapp/background.dart';
import 'package:newsapp/navigation.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});


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
             Icon(Icons.arrow_back,color: Colors.white,size: 48,),
          Text('Back to news', style: TextStyle(color: Colors.purpleAccent,fontWeight: FontWeight.bold, fontSize: isMobile ?16: 18),),
          ],
      ),

      
          
      ),
       SliverToBoxAdapter(
        child: 
           Card(
          
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
                child: AnimatedScale(scale: 1.0, 
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
            
              ],
             ),
          )
        ),
      SliverToBoxAdapter(
        child: 
           Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
             Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    "Breaking: Major Tech Company Announces Revolutionary AI Platform",
                    
                    style: TextStyle(
                      fontSize: isMobile ? 35: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),
                   Row(
                        children: [
                          Icon(Icons.calendar_today,size: 18,fontWeight: FontWeight.bold, color:  Colors.purpleAccent,),
                          SizedBox(width: 6,),
                       Text(
                        "January 29,2026",
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 107, 107, 107),
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                        ],
                      ),
                  const SizedBox(height: 10),
                  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person_3_outlined,size: 18,fontWeight: FontWeight.bold,color:  Colors.purpleAccent,),
                          SizedBox(width: 6,),
                       Text(
                        "Sarah McKenny",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 125, 123, 123),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                        ],
                      ),
                  const SizedBox(height: 10),
                
    Divider(
      color: Color.fromARGB(127, 0, 0, 0),
      thickness: 2, 
      indent: 5, 
      endIndent: 8,
    ),
                 const SizedBox(height: 10),

Container(
  decoration: BoxDecoration(
    color:  const Color.fromARGB(42, 33, 149, 243),
    border:  Border(
      left: BorderSide(
        color: const Color.fromARGB(255, 219, 33, 243), 
        width: 3.0, 
      ),
  ),
  ),
  child: 
  Padding(padding: 
  EdgeInsets.all(20),
  child:
              Text(
           "Industry leaders unveil groundbreaking artificial intelligence system that promises to transform how we work.",   
            style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
  ),
),
                  const SizedBox(height: 15),

                  Text(
                    "In a stunning announcement that has sent shockwaves through the technology industry, one of the world's leading tech companies has unveiled a revolutionary new artificial intelligence platform that promises to fundamentally transform how businesses and individuals interact with technology."
'\n\n'
"The new platform, which has been in development for over three years, represents a significant leap forward in AI capabilities. It combines advanced natural language processing, computer vision, and predictive analytics in a seamless, user-friendly interface that makes sophisticated AI accessible to everyone."
'\n\n'

"Industry experts are calling this \"the most significant technological advancement of the decade,\" with potential applications ranging from healthcare and education to finance and entertainment. Early beta testers report remarkable improvements in productivity and decision-making capabilities."
'\n\n'

"The company plans a phased rollout starting next month, with enterprise customers getting first access, followed by a general consumer release later this year. Pricing details have not yet been announced, but the company has committed to ensuring accessibility across different market segments.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
Divider(
      color: Color.fromARGB(127, 0, 0, 0),
      thickness: 2, 
      indent: 5, 
      endIndent: 8,
    ),
                  const SizedBox(height: 20),
      Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
         GestureDetector(
         
          child: Container(
            
            decoration: BoxDecoration(
                          
                             gradient: LinearGradient(colors:[const Color.fromARGB(199, 155, 39, 176),Colors.pink],
            begin: Alignment.topLeft, 
              end: Alignment.bottomRight, 
              
          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:
                         Padding(padding:
          EdgeInsets.all(10), 
          child: 
          Row(
                           children: [
                          Icon(Icons.share,color: Colors.white,),
                          SizedBox(width: 4,),
                          Text('Share Article',style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                        ),
          ),
          ),
         ),
                          SizedBox(width: 4,),

               GestureDetector(
         
          child: Container(
            
            decoration: BoxDecoration(
                          
              color: const Color.fromARGB(107, 209, 208, 208),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:
                         Padding(padding:
          EdgeInsets.all(10), 
          child: 
          Row(

                           children: [
                          Icon(Icons.bookmark_outline,color: Colors.black,),
                          SizedBox(width: 4,),
                          Text('Save for later',style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                        ),
          ),
          ),
         ),          
          

        ],
      ),
              ],
            ),
             ),
              ],
             ),
          ),

      ),
      SliverToBoxAdapter(
        child: 
                   SizedBox(height: 20),

      ),
       SliverToBoxAdapter(
        child: 
           Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: 
               
             Padding(
              padding: const EdgeInsetsGeometry.only(
                left: 20,
                top: 20,
                bottom: 40,

              ),
              child:
                  // Title
                  Text(
                    "More from Technology",
                    
                    style: TextStyle(
                      fontSize:  25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                        
              
            
             
              
             ),
          ),

      ),
       SliverToBoxAdapter(
        child: 
                   SizedBox(height: 20),

      ), 
        
        ],
    ),
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
    ),
    );
    
  }
}

