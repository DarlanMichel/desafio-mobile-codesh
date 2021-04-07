import 'package:flutter/material.dart';
import 'package:flutter_application/app/modules/home/home_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).accentColor,
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("assets/logo.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Theme.of(context).primaryColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                width: 2
                            )
                          ),
                          hintText: 'Searching...',
                          hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_alt,
                      color: Theme.of(context).primaryColor,
                    ), 
                    onPressed: (){}
                  )
                ],
              ),
            ),
            Observer(
              builder: (_) {
                if (controller.loading || controller.listPatient == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.listPatient.length,
                    itemBuilder: (_, i) {
                      return GestureDetector(
                        child: Card(
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                color: Colors.orange,
                                width: 2
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context).accentColor,
                                      ),
                                      child: ClipOval(
                                        child: Image.network(
                                          controller.listPatient[i].pictureLarge,
                                          height: MediaQuery.of(context).size.height,
                                          width: MediaQuery.of(context).size.width,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("NOME: ",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(controller.listPatient[i].nameFirst +' '+ controller.listPatient[i].nameLast,
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text("Gênero: ${controller.listPatient[i].gender}"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text("Nacionalidade: ${controller.listPatient[i].nat}"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: (){},
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
