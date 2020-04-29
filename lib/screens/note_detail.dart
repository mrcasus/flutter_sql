//import 'dart:async';

//import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class NoteDetail extends StatefulWidget {
  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }


  List<String> sube=['AKÇAABAT','TANJANT','MEYDAN','CUMHURİYET','D.DERE','KAŞÜSTÜ İRTİBAT','ARSİN','OF','KAÇKAR','RİZE','ÇAYKENT','ÇAYELİ','ARDEŞEN','HOPA','ARTVİN','GÜMÜŞHANE','BAYBURT','VAKFIKEBİR','GİRESUN','BULANCAK','DURUGÖL','ORDU','BOZTEPE','ÇUKURÇAYIR',];
  String _sube='AKÇAABAT';

  void pilihAgama(String value){
    setState(() {
      _sube=value;
    });
  }

 List<String> ana=['MOBİLYA VE MEFRUŞATLAR','DEMİRBAŞLAR','BİLGİSAYAR VE YAZICILAR','ELEKTRİK/ELEKTRONİK MALZEME'];
  String _ana='MOBİLYA VE MEFRUŞATLAR';

  void pilihAna(String value){
    setState(() {
      _ana=value;
    });
  }
List<String> alt=['AKILLI TELEFON','ALARM','BANKO','BARKOD PRINTER','CRADLE','DOLAP','KAMERA','DVR','ECZA DOLABI','EL ARABASI','EL TERMİNALİ','ETEJER','HESAP MAKİNESİ','IP TELEFON','ISITICI','JENERATÖR','KABİNET','KANTAR','KART OKUYUCU','KESON','KLAVYE','KLİMA','KOLTUK','MASA','MODEM','MONİTÖR','PANO','PC','PORTMANTO','PORTRE','RAF','ROUTER','SANDALYE','SEHPA','SEHPA','SWITCH','TABELA','UPS','YANGIN TÜPÜ','YAZICI'];
  String _alt='AKILLI TELEFON';

  void pilihAlt(String value){
    setState(() {
      _alt=value;
    });
  }

  List<String> demalt=['AKILLI TELEFON','ALARM','BANKO','BARKOD PRINTER','CRADLE','DOLAP','KAMERA','DVR','ECZA DOLABI','EL ARABASI','EL TERMİNALİ','ETEJER','HESAP MAKİNESİ','IP TELEFON','ISITICI','JENERATÖR','KABİNET','KANTAR','KART OKUYUCU','KESON','KLAVYE','KLİMA','KOLTUK','MASA','MODEM','MONİTÖR','PANO','PC','PORTMANTO','PORTRE','RAF','ROUTER','SANDALYE','SEHPA','SEHPA','SWITCH','TABELA','UPS','YANGIN TÜPÜ','YAZICI'];
  String _demalt='AKILLI TELEFON';

  void pilihDemalt(String value){
    setState(() {
      _demalt=value;
    });
  }
 


//Future scan() async {
  //  try {
    //  String barcode = await BarcodeScanner.scan();
//      setState(() => this.barcode = barcode);
  //  } on PlatformException catch (e) {
    //  if (e.code == BarcodeScanner.CameraAccessDenied) {
      //  setState(() {
        //  this.barcode = 'Kamera yetkisi verin!';
 //       });
   //   } else {
     //   setState(() => this.barcode = 'Unknown error: $e');
    //  }
  //  } on FormatException{
    //  setState(() => this.barcode = 'Lütfen barkod okutunuz!');
  //  } catch (e) {
  //    setState(() => this.barcode = 'Unknown error: $e');
  //  }
  //}


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: SingleChildScrollView(padding: const EdgeInsets.all(8.0),
         // child: Center(
child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Şube adı :     ', style: TextStyle(fontSize: 18.0,color: Colors.red),),
                Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          onChanged: (String value){
                            pilihAgama(value);
                          },
                          value: _sube,
                          items: sube.map((String value){
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                )
              ],
            ),
            //Padding(padding: EdgeInsets.only(top: 10.0),),
                  Row(
                       mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text('Ana Kategori :  ', style: TextStyle(fontSize: 18.0,color: Colors.red),),
                        Expanded(
                          child: DropdownButton<String>(
                          isExpanded: true,
                          onChanged: (String value){
                            pilihAna(value);
                          },
                          value: _ana,
                          items: ana.map((String value){
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                ),
                            );
                          }).toList(),
                        ),
                        )
                      ],
                    ),
                    Row(
                       mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text('Alt Kategori :  ', style: TextStyle(fontSize: 18.0,color: Colors.red),),
                        Expanded(
                          child: DropdownButton<String>(
                          isExpanded: true,
                          onChanged: (String value){
                            pilihAlt(value);
                          },
                          value: _alt,
                          items: alt.map((String value){
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                ),
                            );
                          }).toList(),
                        ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text('Demirbaş Açıklama :  ', style: TextStyle(fontSize: 18.0,color: Colors.red),),
                        
                        Expanded(
                          child: DropdownButton<String>(
                          isExpanded: true,
                          onChanged: (String value){
                            pilihDemalt(value);
                          },
                          value: _demalt,
                          items: alt.map((String value){
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                ), 
                        );
                        }).toList(),
                        ),
                        )
                      ],
                    ),
                     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                      Text('Barkod:',
                      style: TextStyle(fontSize: 18.0,color: Colors.red),
                      ),
                      Text(barcode,
                      style: TextStyle(fontSize: 18.0,color: Colors.black),
                      ),
                     IconButton(
                    icon: Icon(Icons.camera),
                    iconSize: 30,
                    onPressed:(){} ,
                    )
            ],
                     ),
              
          ],
          ),
          )
          //),
          )
          
      );
  }
}