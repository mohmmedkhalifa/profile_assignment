import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'STYLISH',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, top: 16),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/p.jpeg'),
                      ),
                    ),
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyWidget(
                                  title: '1,252',
                                  subTitle: 'posts',
                                ),
                                MyWidget(
                                  title: '4m',
                                  subTitle: 'followers',
                                ),
                                MyWidget(
                                  title: '265',
                                  subTitle: 'following',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: MyButton(
                              text: 'Edit Profile',
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ListTile(
                  title: Text(
                    "Home Furniture",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Text("Home accessories, some information about us"),
                ),
                ListTile(
                  title: Text(
                    "Contact US:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("+925 987 952 2356",
                          style: TextStyle(color: Colors.blue)),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Chennai, India",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: MyButton(
                            text: 'Add Product',
                          )),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                              child: MyButton(
                            text: 'Share',
                          )),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                              child: MyButton(
                            text: 'Contact Us',
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.43,
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/images/${index + 1}.jpeg'),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({Key key, this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: RaisedButton(
        color: Color(0xFFE0E0E0),
        child: Center(
          child: Text(text),
        ),
        onPressed: () {},
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({
    Key key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ],
    );
  }
}
