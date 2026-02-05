import 'package:flutter/material.dart';

import 'background.dart';
import 'navigation.dart';
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>{

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
             Icon(Icons.arrow_back,color: Colors.black,size: 20,),
             SizedBox(width: 4,),
          Text('Back to news', style: TextStyle(color: Colors.purpleAccent,fontWeight: FontWeight.bold, fontSize: 18),),
          ],
      ),

      
          
      ),
      SliverToBoxAdapter(

        child: 
        Container(
          decoration: BoxDecoration(
             gradient: LinearGradient(colors:[Colors.purple,Colors.pink],
            begin: Alignment.topLeft, 
              end: Alignment.bottomRight, 
              
          ),
          ),
          child: 
            Padding(padding: 
        EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: 
           Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
         
       
             Icon(Icons.newspaper_outlined,color: Colors.white,size: 48,),
            SizedBox(height: 8,),
          Text('About NewsHub', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: isMobile ?32: 48),),
          
      
      SizedBox(height: 10,),

      Text("Your trusted source for breaking news and in-depth stories from around the world",
      textAlign: TextAlign.center,
    
      style: TextStyle(color: Color(0xFFF3F4F6),fontSize:22,),
      ),
          ],
      ),
      ),
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 40,),
      ),
       SliverToBoxAdapter(
        child: 
           Card(
          
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
           child:Padding(padding: 
           EdgeInsets.all(20),
           child: 
            Column(
            children: [
              Row(
                children: [
                  
                         Container(
                          
                      decoration: BoxDecoration(
                         gradient: LinearGradient(colors:[Colors.purple,Colors.pink],
            begin: Alignment.topLeft, 
              end: Alignment.bottomRight, 
              
          ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Padding(padding: 
                      EdgeInsets.all(10),
                      child:
                      Icon(Icons.circle_outlined,color: Colors.white,size: 38,),
                         ),
                         ),
                         SizedBox(width: 10,),
                         Text("Our Mission",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),

            
                ],
              ),
              SizedBox(height: 20,),
              Text("At NewsHub, we believe in delivering accurate, timely, and unbiased news to our readers. Our mission is to keep you informed about the events that matter most, from breaking news to in-depth analysis of global affairs."
'\n\n'
"We are committed to journalistic excellence and strive to present multiple perspectives on every story, empowering you to form your own informed opinions",style: TextStyle(fontSize: 25),)
            ],
           ),
           ),
          ),
        ),
        
     
      SliverToBoxAdapter(
        child: 
                   SizedBox(height: 20),

      ),
       
       SliverToBoxAdapter(
        child: SizedBox(height: 40,),
      ),
       SliverToBoxAdapter(
        child: 
           Card(
          
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
           child:Padding(padding: 
           EdgeInsets.all(20),
           child: 
            Column(
            children: [
              Row(
                children: [
                  
                         Container(
                          
                      decoration: BoxDecoration(
                         color: const Color.fromARGB(106, 33, 149, 243),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Padding(padding: 
                      EdgeInsets.all(10),
                      child:
                      Icon(Icons.people_outline,fontWeight: FontWeight.bold,color:  Colors.blue,size: 38,),
                         ),
                         ),
                         SizedBox(width: 10,),
                         Text("Our Team",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),

            
                ],
              ),
              SizedBox(height: 20,),
              Text("Our team of experienced journalists and editors work around the clock to bring you the most important stories from across the globe. With decades of combined experience, we're dedicated to excellence in journalism.",style: TextStyle(fontSize: 25),)
            ],
           ),
           ),
          ),
        ),
        SliverToBoxAdapter(
        child: 
                   SizedBox(height: 20),

      ),
       
       SliverToBoxAdapter(
        child: SizedBox(height: 40,),
      ),
       SliverToBoxAdapter(
        child: 
           Card(
          
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
           child:Padding(padding: 
           EdgeInsets.all(20),
           child: 
            Column(
            children: [
              Row(
                children: [
                  
                         Container(
                          
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(109, 155, 39, 176),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Padding(padding: 
                      EdgeInsets.all(10),
                      child:
                      Icon(Icons.book_outlined,fontWeight: FontWeight.bold, color: Colors.purple,size: 38,),
                         ),
                         ),
                         SizedBox(width: 5,),
                         Text("Our Standards",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),

            
                ],
              ),
              SizedBox(height: 20,),
              Text("We uphold the highest standards of journalistic integrity. Every story is thoroughly researched, fact-checked, and reviewed by our editorial team before publication. Accuracy and fairness are our top priorities.",style: TextStyle(fontSize: 25),)
            ],
           ),
           ),
          ),
        ),
        SliverToBoxAdapter(
        child: 
                   SizedBox(height: 20),

      ),
       
       SliverToBoxAdapter(
        child: SizedBox(height: 40,),
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
                
                    
                SizedBox(
              height: isMobile ? 160: 180,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: AnimatedScale(scale:1.0, 
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              child: Image.asset(
                  "../assets/images/people.jpeg",
                  
                  fit: BoxFit.cover,
                ),
              ),
              ),
            ),
            
             Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    "Join our community",
                    
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                   
                  Text(
                    "NewsHub serves millions of readers worldwide who rely on us for comprehensive coverage of technology, business, sports, entertainment, health, and global affairs. Join our growing community of informed readers today.",

                    
                    style: TextStyle(
                     fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 10),

                  
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
        child: SizedBox(height: 40,),
      ),
       SliverToBoxAdapter(
        child: 
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.purple,Colors.pink],
            begin: Alignment.topLeft, 
              end: Alignment.bottomRight, 
              
          ),
          ),
          child: 
           Card(
          
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.transparent,
           child:Padding(padding: 
           EdgeInsets.all(20),
           child: 
            Column(
            children: [
             Text("Get in touch",style: TextStyle(fontSize: 39,color: Colors.white),),
             Row(
              children: [
                Icon(Icons.email_outlined,color: Colors.white,size: 40,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Email",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("abebe@gmail.com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 233, 232, 232)),),
                  ],
                )
              ],
             ),
             SizedBox(height: 20,),
            
             Row(
              children: [
                Icon(Icons.phone_outlined,color: Colors.white,size: 40,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Phone",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("09-00-00-00-00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 233, 232, 232)),),
                  ],
                )
              ],
             ),
             SizedBox(height: 20,),
              Row(
              children: [
                Icon(Icons.location_on_outlined,color: Colors.white,size: 40,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Address",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Addis Ababa,Ethiopia",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 233, 232, 232)),),
                  ],
                )
              ],
             ),
             ],
           ),
           ),
          ),
        ),
       ),
        ],
    ),
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
    ),
    );
    
  }
}