import 'package:flutter/material.dart';
import 'package:flutter_application/app/modules/models/patient_model.dart';
import 'package:flutter_application/app/modules/patient_page/patient_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

class PatientPage extends StatefulWidget {
  final String title;
  final PatientModel model;
  const PatientPage({Key key, this.title = "PatientPage", this.model})
      : super(key: key);
  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends ModularState<PatientPage, PatientController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 165),
            height: MediaQuery.of(context).size.height - 165,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                    child: Icon(
                      Icons.close_rounded,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                    onTap: () {
                      Modular.to.pop();
                    }),
              ),
            ),
          ),
          Observer(builder: (_) {
            if (controller.loading || controller.model == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 90),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).accentColor,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          controller.pictureLarge == null ?
                           "https://w7.pngwing.com/pngs/998/203/png-transparent-black-and-white-no-to-camera-logo-video-on-demand-retail-website-simple-no-miscellaneous-television-text.png" : 
                           controller.pictureLarge,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      '${controller.nameFirst == null ? 'Cadastro sem Nome' : controller.nameFirst}' +
                      ' ' + '${controller.nameLast == null ? 'Sobrenome' : controller.nameLast}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      controller.email == null ? 'Cadastro sem E-mail' : controller.email,
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(0, 131, 202, 1)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Gênero: ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          controller.gender == null ? 'Cadastro sem gênero' : 
                          '${controller.gender == 'male' ? 'Masculino' : 'Feminino'}',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Nascimento: ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          controller.dobDate == null ? 'Cadastro sem data de nascimento' :
                          DateFormat('dd/MM/yyyy').format(
                            DateTime.parse(controller.dobDate),
                          ),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Telefone: ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          controller.phone == null ? 'Cadastro sem telefone' : controller.phone,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Nacionalidade: ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          controller.nat == null ? 'Cadastro sem Nacionalidade' : controller.nat,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Endereço: ",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              '${controller.locationStreetName == null ? 'Cadastro sem Rua' : controller.locationStreetName}'+
                              ', ' + '${controller.locationStreetNumber.toString() == null ? 'Endereço sem número' : controller.locationStreetNumber.toString()}',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16
                              ),
                            )
                          ],
                        ),
                        Text(
                              '${controller.locationCity == null ? 'Cadastro sem Cidade' : controller.locationCity}' +
                              ', ' + '${controller.locationState == null ? 'Cadastro sem Estado' : controller.locationState}',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16
                              ),
                            ),
                        Text(
                              controller.locationCountry == null ? 'Cadastro sem País' : controller.locationCountry,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16
                              ),
                            )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ID: ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          controller.idValue == null ? 'Cadastro sem ID' : controller.idValue,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
