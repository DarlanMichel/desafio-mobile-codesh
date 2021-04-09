import 'package:flutter/material.dart';
import 'package:flutter_application/app/modules/home/home_controller.dart';
import 'package:flutter_application/app/modules/models/patient_model.dart';
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image(
                height: 150,
                width: 150,
                image: AssetImage("assets/logo.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (text) {
                        if (text.length == 2) {
                          FocusScope.of(context).unfocus();
                          controller.setNat(text.toLowerCase());
                        } else if (text.length == 0) {
                          controller.setNat(null);
                          controller.gender == null
                              ? controller.load()
                              : controller.specificGender();
                          FocusScope.of(context).unfocus();
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Theme.of(context).primaryColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 2)),
                        hintText: 'Searching...',
                        hintStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  PopupMenuButton(
                      icon: Icon(
                        Icons.filter_alt_rounded,
                        color: Theme.of(context).primaryColor,
                        size: 45,
                      ),
                      onSelected: controller.selecGender,
                      itemBuilder: (context) {
                        return controller.filterGender.map((String gender) {
                          return PopupMenuItem<String>(
                              value: gender, child: Text(gender));
                        }).toList();
                      }),
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
                  return Column(
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.listPatient.length,
                        itemBuilder: (_, i) {
                          PatientModel patient = controller.listPatient[i];

                          return GestureDetector(
                            child: Card(
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2)),
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
                                          patient.pictureLarge == null
                                              ? "https://w7.pngwing.com/pngs/998/203/png-transparent-black-and-white-no-to-camera-logo-video-on-demand-retail-website-simple-no-miscellaneous-television-text.png"
                                              : patient.pictureLarge,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "NOME: ",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Flexible(
                                                child: Container(
                                                  child: Text(
                                                    '${patient.nameFirst == null ? 'Cadastro sem Nome' : patient.nameFirst}' +
                                                        ' ' +
                                                        '${patient.nameLast == null ? 'Sobrenome' : patient.nameLast}',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text(
                                                "GÊNERO: ",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                patient.gender == null
                                                    ? 'Cadastro sem gênero'
                                                    : '${patient.gender == 'male' ? 'Masculino' : 'Feminino'}',
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text(
                                                "NACIONALIDADE: ",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                patient.nat == null
                                                    ? 'Cadastro sem Nacionalidade'
                                                    : patient.nat,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Modular.to
                                  .pushNamed("/patient", arguments: patient);
                            },
                          );
                        },
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: () {
                              controller.page = controller.page + 1;
                              if (controller.gender != null &&
                                  controller.textNat == null) {
                                controller.specificGender();
                              } else if (controller.gender == null &&
                                  controller.textNat != null) {
                                controller.specificNat();
                              } else if (controller.gender != null &&
                                  controller.textNat != null) {
                                controller.specific();
                              } else {
                                controller.load();
                              }
                            },
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.replay_rounded,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Text(
                                  "Loading More...",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ],
                            ))),
                      )
                    ],
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
