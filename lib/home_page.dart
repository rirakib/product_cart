import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key ? key
  }): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios, color: Colors.black, )),

        title: Text('Cart', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600), ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          TextButton(onPressed: () {

          }, child: Text('Clear', style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600
          ), ))
        ],

      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Your Order', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,

              ), ),
            ),

            Expanded(
              child: ListView.builder(itemBuilder: (context, index){
                return Card(
                elevation: 8,
                child: ListTile(
                  leading: Image(image: NetworkImage('https://images.unsplash.com/photo-1586790170083-2f9ceadc732d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&w=1000&q=80')),
                  title: Text('Men T-shirt'),
                  subtitle: Text('450 Tk'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text('0', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ), ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),

                ),
              );
              },
              itemCount: 2,
              ),
            ),
            SizedBox(height: 15, ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.tag_outlined, color: Colors.black54, ),
                  Text('Do you have any promo code?', style: TextStyle(
                    fontSize: 21,
                    color: Colors.black54
                  ), )
                ],
              ),
            ),

            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total items'),
                    Text('2000tk', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ), )
                  ],
                ),
              ), ),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(onPressed: () {

                }, child: Text('Go to Checkout 5000 Tk'),
                style:
                TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                  minimumSize: Size.fromHeight(40),
                  padding: EdgeInsets.fromLTRB(0, 22, 0, 22),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  )
                ),



              )

            ),


          ],
        ),
      ),

    );
  }
}