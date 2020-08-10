import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:shopping_ui/Contants/MyRaisedButton.dart';
import 'package:shopping_ui/Contants/MyText.dart';
import 'package:shopping_ui/DetailScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _Sizes_data = ['40', '41', '23', '43'];
  String _selected_size;

  List<String> _Colors_data = ['red', 'blue', 'white'];
  String _selected_Colors;

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
  var _images_list=['images/shose1.jpg','images/shose2.png','images/shose3.png','images/shose4.png',
    'images/shose1.jpg','images/shose2.png','images/shose3.png','images/shose4.png'];
  var _price_list=['255 \$','93 \$','300 \$','93 \$',
    '255 \$','93 \$','300 \$','93 \$'];
  var _description_list=['all Jordan  1 highh zom','Description all Jordan  1 highh zom',
    'all Jordan  1 highh zom','all Jordan  1 highh zom',
    'all Jordan  1 highh zom','Description all Jordan  1 highh zom',
    'all Jordan  1 highh zom','all Jordan  1 highh zom'];


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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .30,
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
                  (i) => Container(
                      color: Colors.white,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(bottom: 30),
                        color: Colors.white.withOpacity((i + 1) / 7),
                        child: Image.asset(_images_list[i],fit: BoxFit.contain,),
                      )
                  )
              )
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MyText(title: '250 QAR',size: 15,fontWeight: FontWeight.bold,),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: DropdownButton(
                      // isDense: true,
                      isExpanded: false,
                      icon: Icon(Icons.arrow_drop_down),
                      //  focusColor: Colors.blue,
                      hint: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10),
                        child:  MyText(title: 'Size',),
                      ),
                      //text shown on the button (optional)
                      elevation: 16,
                      items: _Sizes_data.map((val) => DropdownMenuItem(
                            value: val,
                            child: Text(val),
                          )).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selected_size = value;
                        });
                      },
                      value: _selected_size,
                      //  value: selected_size,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
//                    width: 100.0,
//                    height: 50.0,
                    // padding: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(color: Colors.black)
                    ),
                    child: DropdownButton(
                      // isDense: true,
                      isExpanded: false,
                      icon: Icon(Icons.arrow_drop_down),
                      //  focusColor: Colors.blue,
                      hint: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10),
                        child: MyText(title: 'Colors',),
                      ),
                      //text shown on the button (optional)
                      elevation: 16,
                      items: _Colors_data.map((val) => DropdownMenuItem(
                            value: val,
                            child: Text(val),
                          )).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selected_Colors = value;
                        });
                      },
                      value: _selected_Colors,
                      //  value: selected_size,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        faourite = !faourite;
                      });
                      // print(faourite.toString());
                    },
                    icon: (Icon(
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
            child:MyRaisedButton(child: MyText(title:'Newly Released' ,colorr: Colors.white,),
             // border_color:Colors.black ,
              border_size: 5,
              button_color: Colors.red,

    )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child:MyText(title:  "Air Jordan 1 Retro High oG Co.jp  \' Yokyo \' ",
                alien: TextAlign.center,
              size: 20,fontWeight: FontWeight.bold,
              ),

          ),
        ),


        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            color: Colors.black26.withOpacity(.1),
            height: 3,
            thickness:3,
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
                itemBuilder: (BuildContext context, int index) => Container(

                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                   // border: Border.all(color: Colors.black)
                    border: Border(right: BorderSide( //                   <--- left side
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
                       MyText(title: _address_data[index],colorr: Colors.black26,fontWeight: FontWeight.bold,),
                       MyText(title: _data[index],decoration: TextDecoration.underline,),
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
          child: MyText(title: 'Product Info',size: 15,fontWeight: FontWeight.bold,),

        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MyText(title: 'this data changed any time , data of product ,this data changed any time , data of product '
              ',this data changed any time , data of product ,this data changed any time , data of product '
            ,size: 14,),

        ),


        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[

    MyRaisedButton(child: MyText(title: 'Sell',),border_color: Colors.black,border_size: 5,onpressed: (){},),
    MyRaisedButton(child: MyText(title: 'Own',),border_color: Colors.black,border_size: 5,onpressed: (){},),
    MyRaisedButton(child: MyText(title: 'Share',),border_color: Colors.black,border_size: 5,onpressed: (){},)

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
              ),SizedBox(width: 5,),
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
          padding: const EdgeInsets.only(top:30.0,bottom: 5),
          child: MyText(title: 'OnFeet Styles',size: 20,alien: TextAlign.center,fontWeight: FontWeight.bold,),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: MyText(title: 'Show of how you wear yours',size: 14,alien: TextAlign.center,fontWeight: FontWeight.bold,),
        ),

        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 50,
            child: MyRaisedButton(child: MyText(title: 'Add photo',size: 14,),
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
            child: MyText(title: 'You May Also Like',size: 20,fontWeight: FontWeight.bold,),
          ),
        ),


        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26,width: 2)),
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return DetailScreen(index: index,imageUrl: _images_list[index],);
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
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                            child: MyText(title: _price_list[index],),
                          )),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MyText(title:  _description_list[index],alien: TextAlign.center,),
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
            child: MyRaisedButton(child: MyText(title: 'See More',size: 14,),
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
            child: MyText(title: 'Recommended Collections',size: 20,fontWeight: FontWeight.bold,),
          ),
        ),








        //--------------------------------------------------------------------------






        Container(
//    width: MediaQuery.of(context).size.width,
//    height: MediaQuery.of(context).size.height*.30,
          child: Carousel(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .30,
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
                      (i) => Container(
                     // color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: MyText(title: _description_list[i],)),
                          Container(
                            width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 30),
                             color: Colors.grey.withOpacity((i + 1) / 7),
                            child: Image.asset(_images_list[i],fit: BoxFit.cover,),
                          ),
                        ],
                      )))),
        ),
        //--------------------------------------------------------------------------
SizedBox(height: 100,)
      ]),
    );
  }
}
