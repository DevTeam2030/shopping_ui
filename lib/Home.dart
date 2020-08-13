import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:shopping_ui/Contants/MyDropDoenButton.dart';
import 'package:shopping_ui/Contants/MyRaisedButton.dart';
import 'package:shopping_ui/Contants/MyText.dart';
import 'package:shopping_ui/DetailScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const text2_color = Color(0xfff03cc0);
  List<String> _Sizes_data = ['40', '41', '23', '43'];
  List<String> _Colors_data = ['red', 'blue', 'white'];
  bool faourite = true;
  List<String> _address_data = [
    'Brand',
    'Releasd Date',
    'NickName',
    'Color' 'Main Color',
    'ColorAway',
    'designer'
  ];
  List<String> _data = [
    'Brand name',
    '10/8/2020',
    'Tokyo',
    'Cv 200',
    'Gray,White',
    'Cilver',
    'peter Moore'
  ];
  var _images_list = [
    'images/shose1.jpg',
    'images/shose2.png',
    'images/shose3.png',
    'images/shose4.png',
    'images/shose1.jpg',
    'images/shose2.png',
    'images/shose3.png',
    'images/shose4.png'
  ];
  var _price_list = ['255 \$', '93 \$', '300 \$', '93 \$',
    '255 \$', '93 \$', '300 \$', '93 \$'];
  var _description_list = [
    'all Jordan  1 highh zom',
    'Description all Jordan  1 highh zom',
    'all Jordan  1 highh zom',
    'all Jordan  1 highh zom',
    'all Jordan  1 highh zom',
    'Description all Jordan  1 highh zom',
    'all Jordan  1 highh zom',
    'all Jordan  1 highh zom'
  ];

 var data_Us_Sizes = ['All','US1',
   'Us 2','US4',
   'Us6','US1',
   'All','US1',
   'Us6','US1',
   'All','US1',
   'Us 2','US4',
   'Us6','US1',
   'All','US1',
   'Us6','US1'];
  var data_Us_Sizes_prices = [ '290 QAR','290 QAR',
    '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR','290 QAR','290 QAR',
    '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR', '290 QAR','290 QAR'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Container(
              width: 70,
              height: 10,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child:
              MyRaisedButton(child: MyText(title: 'Own',),
                button_color: Colors.white,
                border_color: Colors.black,)

//            RaisedButton(
//              color: Colors.white,
//              onPressed: () {},
//              shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5),
//                  side: BorderSide(color: Colors.black)),
//              child: Text('Own'),
//            ),
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Container(

//    width: MediaQuery.of(context).size.width,
//    height: MediaQuery.of(context).size.height*.30,
          child: Carousel(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .30,
              initialPage: 0,
              allowWrap: true,
              type: Types.multiRotating,
              onCarouselTap: (i) {
                print("onTap $i");
              },
              indicatorType: IndicatorTypes.bar,
              indicatorBackgroundColor: Colors.white.withOpacity(.2),
              activeIndicatorColor: Colors.black,
              unActiveIndicatorColor: Colors.black26,
              showIndicator: true,
              arrowColor: Colors.black,
              axis: Axis.horizontal,
              showArrow: false,
              children: List.generate(
                  7,
                      (i) =>
                      Container(
                          color: Colors.white,
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            margin: EdgeInsets.only(bottom: 30),
                            color: Colors.white.withOpacity((i + 1) / 7),
                            child: Image.asset(
                              _images_list[i], fit: BoxFit.contain,),
                          )
                      )
              )
          ),

        ),
//        ExpansionTile(
//          title: Text(''),
//          children: <Widget>[
//            ListTile(title: Text('one'),),
//            ListTile(title: Text('Two'),),
//            ListTile(title: Text('Three'),),
//          ],
//
//        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MyText(title: '250 QAR', size: 15, fontWeight: FontWeight.bold,),

              Row(
                children: <Widget>[

                  MyDropDoenButton(data: _Sizes_data, hint: 'Size',),
                  SizedBox(
                    width: 3,
                  ),
                  MyDropDoenButton(data: _Colors_data, hint: 'Colors',),

                  IconButton(
                    onPressed: () {
                      setState(() {
                        faourite = !faourite;
                      });
                      // print(faourite.toString());
                    },
                    icon: (
                        Icon(
                          Icons.favorite_border,
                          color: (faourite == true ? Colors.red : Colors.black),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: MyRaisedButton(
                child: MyText(title: 'Newly Released', colorr: Colors.white,),
                // border_color:Colors.black ,
                border_size: 5,
                button_color: Colors.red,

              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: MyText(
              title: "Air Jordan 1 Retro High oG Co.jp  \' Yokyo \' ",
              alien: TextAlign.center,
              size: 20, fontWeight: FontWeight.bold,
            ),

          ),
        ),


        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            color: Colors.black26.withOpacity(.1),
            height: 3,
            thickness: 3,
          ),
        ),
        Container(
            margin: EdgeInsets.all(5),
            //padding: EdgeInsets.symmetric(horizontal: 30),
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _address_data.length,
                itemBuilder: (BuildContext context, int index) =>
                    Container(

                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black)
                          border: Border(
                            right: BorderSide( //                   <--- left side
                              color: Colors.black26,
                              width: 1.0,
                            ),)
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            MyText(title: _address_data[index],
                              colorr: Colors.black26,
                              fontWeight: FontWeight.bold,),
                            MyText(title: _data[index],
                              decoration: TextDecoration.underline,),
                          ],
                        ),
                      ),

                    ))),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            color: Colors.black26,
            height: 1,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyText(
            title: 'Product Info', size: 15, fontWeight: FontWeight.bold,),

        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MyText(
            title: 'this data changed any time , data of product ,this data changed any time , data of product '
                ',this data changed any time , data of product ,this data changed any time , data of product '
            , size: 14,),

        ),


        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              MyRaisedButton(child: MyText(title: 'Sell',),
                border_color: Colors.black,
                border_size: 5,
                onpressed: () {},),
              MyRaisedButton(child: MyText(title: 'Own',),
                border_color: Colors.black,
                border_size: 5,
                onpressed: () {},),
              MyRaisedButton(child: MyText(title: 'Share',),
                border_color: Colors.black,
                border_size: 5,
                onpressed: () {},)

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.black26,
                  height: 3,
                  thickness: 3,
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child: Divider(
                  color: Colors.black26,
                  height: 3,
                  thickness: 3,
                ),
              ), SizedBox(width: 5,),
              Expanded(
                child: Divider(
                  color: Colors.black26,
                  height: 3,
                  thickness: 3,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 5),
          child: MyText(title: 'OnFeet Styles',
            size: 20,
            alien: TextAlign.center,
            fontWeight: FontWeight.bold,),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: MyText(title: 'Show of how you wear yours',
            size: 14,
            alien: TextAlign.center,
            fontWeight: FontWeight.bold,),
        ),

        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 50,
            child: MyRaisedButton(child: MyText(title: 'Add photo', size: 14,),
              border_color: Colors.black,),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            color: Colors.transparent.withOpacity(.05),
            height: 3,
            thickness: 10,
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyText(title: 'You May Also Like',
              size: 20,
              fontWeight: FontWeight.bold,),
          ),
        ),


        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 2)),
          height: 400,
          child: GridView.count(
            crossAxisCount: 2,
            // Generate 100 Widgets that display their index in the List
            children: List.generate(_images_list.length, (index) {
              return Container(

//                  decoration: BoxDecoration(
//
//                      border: Border.all(color: Colors.black26)),

//                child: Container(
//                  color: Colors.white,
//                    child: Image.asset(_images_list[index],fit: BoxFit.fill,)),
                child: Card(

                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen(
                          index: index, imageUrl: _images_list[index],);
                      }));
                    },
                    child: (Stack(
                      children: <Widget>[
                        Hero(
                          tag: 'imageHero$index',
                          child: Image.asset(
                            _images_list[index],
                          ),
                        ),
                        //  Image.asset(_images_list[index],fit: BoxFit.fill,),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 25),
                              child: MyText(title: _price_list[index],),
                            )),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyText(title: _description_list[index],
                                alien: TextAlign.center,),
                            ))
                      ],
                    )),
                  ),
                ),

              );
            }),
          ),
        ),

        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 50,
            child: MyRaisedButton(child: MyText(title: 'See More', size: 14,),
              border_color: Colors.black,),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            color: Colors.black26.withOpacity(.1),
            height: 3,
            thickness: 10,
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyText(title: 'Recommended Collections',
              size: 20,
              fontWeight: FontWeight.bold,),
          ),
        ),


        //--------------------------------------------------------------------------


        Container(
//    width: MediaQuery.of(context).size.width,
//    height: MediaQuery.of(context).size.height*.30,
          child: Carousel(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .30,
              initialPage: 0,
              allowWrap: true,
              type: Types.slideSwiper,
              onCarouselTap: (i) {
                print("onTap $i");
              },

//              indicatorType: IndicatorTypes.dot,
//              indicatorBackgroundColor: Colors.white.withOpacity(.2),
//              activeIndicatorColor: Colors.black,
//              unActiveIndicatorColor: Colors.black26,
              showIndicator: false,
              arrowColor: Colors.black,
              axis: Axis.horizontal,
              showArrow: false,
              children: List.generate(
                  4,
                      (i) =>
                      Container(
                        // color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: MyText(title: _description_list[i],)),
                              Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                margin: EdgeInsets.only(bottom: 30),
                                color: Colors.grey.withOpacity((i + 1) / 7),
                                child: Image.asset(
                                  _images_list[i], fit: BoxFit.cover,),
                              ),
                            ],
                          )))),
        ),
        //--------------------------------------------------------------------------
        SizedBox(height: 100,)
      ]),

      bottomNavigationBar:
//      BottomNavigationBar(
//        backgroundColor: Colors.black,
//        items: [
//          BottomNavigationBarItem(
//              icon: Icon(Icons.local_drink),
//              title: Text('Beers')),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.add_a_photo), title: Text('New Beer')),
//
//        ],
//      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Colors.black,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: FlatButton(
                onPressed: () {},
                child: Column(children: <Widget>[
                  MyText(title: 'OFFER', colorr: Colors.white,),
                  MyText(title: '200 QAR', colorr: text2_color, size: 10,),

                ],),),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: FlatButton(
                onPressed: () {

                },
                child: Column(children: <Widget>[
                  MyText(title: 'BUY NOW', colorr: Colors.white,),
                  MyText(title: '200 QAR', colorr: text2_color, size: 10,),

                ],),),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                   // visible_sizes=!visible_sizes;
                    return  _presentBottomSheet(context);
                  });

                },
                child: Column(children: <Widget>[
                  MyText(title: 'Size', colorr: Colors.white,),
                  MyText(title: '45 UK',
                    colorr: text2_color,
                    size: 10,
                    decoration: TextDecoration.underline,),

                ],),),
            ),
          ],),
      ),
    );
  }


  void _presentBottomSheet(BuildContext context) {
    showModalBottomSheet(

      context: context,
      builder: (context) =>    Container(
        height: 600,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: MyText(title:'Select U.S.Mens.Size',size: 18,fontWeight: FontWeight.w300,),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 300,
                child:
                GridView.count(
                  crossAxisCount: 4,
                  // Generate 100 Widgets that display their index in the List
                  children: List.generate(data_Us_Sizes.length, (index) {
                    return Container(
                      
                      width: 50,
                      height: 50,
//                  decoration: BoxDecoration(
//
//                      border: Border.all(color: Colors.black26)),

//                child: Container(
//                  color: Colors.white,
//                    child: Image.asset(_images_list[index],fit: BoxFit.fill,)),
                      child: Card(
                        child: InkWell(
                          onTap: () {
                          },
                          child: (
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            MyText(title: data_Us_Sizes[index],colorr: Colors.black,),
                            MyText(title: data_Us_Sizes_prices[index],colorr: text2_color,fontWeight: FontWeight.bold,)
                          ],)
                          ),
                        ),
                      ),

                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
