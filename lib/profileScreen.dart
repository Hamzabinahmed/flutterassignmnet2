import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //
        // APP BAR
        //
        appBar: AppBar(
          toolbarHeight: 70,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: const [
              Text("Natures Pictures"),
              Icon(Icons.arrow_downward),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.add_box_outlined,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.menu,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            //
            // PROFILE DETAIL
            //
            children: [
              SizedBox(
                height: 110,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg"),
                          radius: 40,
                        ),
                        Text("Natures Pictures"),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text("9"),
                              Text("Posts"),
                            ],
                          ),
                          Column(
                            children: const [
                              Text("678"),
                              Text("Followers"),
                            ],
                          ),
                          Column(
                            children: const [
                              Text("9"),
                              Text("Following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //
              // EDIT PROFILE
              // SHARE PROFILE
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 140,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.grey.shade200),
                          onPressed: () {},
                          child: const Text(
                            "Edit profile",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.grey.shade200),
                          onPressed: () {},
                          child: const Text(
                            "Share profile",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.grey.shade200),
                          onPressed: () {},
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/03/21/10/44/desert-1270345__340.jpg"),
                              ),
                              Text("Desert")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1503756234508-e32369269deb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2VhfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                              ),
                              Text("Sea")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "https://images.photowall.com/products/64268/tropical-jungle-1.jpg?h=699&q=85"),
                              ),
                              Text("Jungle")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.grid_view_outlined,
                              color: Colors.black,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.contacts_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAv5VqvBivn-s3MN8VxTV2bXnNCUlafC-IXQ&usqp=CAU"),
                                  ),
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://media.istockphoto.com/id/1381637603/photo/mountain-landscape.jpg?b=1&s=170667a&w=0&k=20&c=MBaQEp6lxIWgZV0eFqQ8d2_zDbYuFk5LEFBawDinLhw="),
                                  ),
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://image.cnbcfm.com/api/v1/image/106287174-1575951473288gettyimages-1128070598.jpeg?v=1589377183&w=1600&h=900"),
                                  ),
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2qD3Nx7KRcvdpEfRVhrX8nn51_Q1TfdwK6w&usqp=CAU"),
                                  ),
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://indotoursadventures.com/public/storage/blogs/d62dca4cba30850844389d6a4e15fa37.jpg"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppZQpyY89MkInHqeh7Lq_moMZI95T_X1eoA&usqp=CAU"),
                                  ),
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2qD3Nx7KRcvdpEfRVhrX8nn51_Q1TfdwK6w&usqp=CAU"),
                                  ),
                                  Image(
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 118,
                                    image: NetworkImage(
                                        "https://wallpapers.com/images/featured/2ygv7ssy2k0lxlzu.jpg"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.contacts_outlined,
                                size: 50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: SizedBox(
                                  width: 100,
                                  child: Text(
                                    "Photos and videos of you",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 10, right: 50.0, left:50),
                                child: Text(
                                    textAlign: TextAlign.center,
                                    "when people tag you in photos and videos,they'll appear here"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
