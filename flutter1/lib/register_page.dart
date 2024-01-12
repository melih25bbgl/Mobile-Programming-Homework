import 'package:flutter/material.dart';
import 'package:flutter1/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController eMail = TextEditingController();
  TextEditingController nameSurname = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kayıt Ekranı"),backgroundColor: Colors.black54,),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: (Colors.black87)
        ),
        child: Column(children: [
          Container(
                  width: 180,
                  height: 180,
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                     border: Border.all(color: Colors.white.withOpacity(0.7),width: 1)
                    ),
                  child: Container(  
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black.withOpacity(0.7),width: 15,
                      ),
                    ),
                    child: Icon(
                      Icons.add_business,
                      size: 45,
                      ),
                  ),
                ),
          Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Kayıt Ol",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                    ),
                  ),
                ),
          Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20) 
                  ),
                  margin: EdgeInsets.only(top: 30,bottom: 10,right: 30,left: 30),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    controller: eMail,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "E-mail",
                      prefixIcon: Icon(Icons.mail)
                    ),
                    validator: (value){
                      if (value == "") {
                        return "E-Mail";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
          Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20) 
                  ),
                  margin: EdgeInsets.only(top: 30,bottom: 10,right: 30,left: 30),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    controller: nameSurname,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ad Soyad",
                      prefixIcon: Icon(Icons.people_alt_outlined)
                    ),
                    validator: (value){
                      if (value == "") {
                        return "Ad Soyad";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
          Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20) 
                  ),
                  margin: EdgeInsets.only(top: 30,bottom: 10,right: 30,left: 30),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    controller: userName,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Kullanıcı Adı",
                      prefixIcon: Icon(Icons.person)
                    ),
                    validator: (value){
                      if (value == "") {
                        return "Kullanıcı Adı";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
          Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20) 
                  ),
                  margin: EdgeInsets.only(top: 30,bottom: 10,right: 30,left: 30),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    controller: passWord,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Şifre",
                      prefixIcon: Icon(Icons.password)
                    ),
                    validator: (value){
                      if (value == "") {
                        return "Şifre";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
          InkWell(
                  onTap: () {
                    print("Kaydı Tamamla Butonu Tıklandı");
                    if(eMail.text.isEmpty || nameSurname.text.isEmpty || userName.text.isEmpty || passWord.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Lütfen Bütün Alanları Doldurun !",textAlign: TextAlign.center,),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 7),
                        ));
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())); }                                    
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20,right: 30,left: 30),
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.grey,
                        Colors.red
                      ]),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("Kaydı Tamamla")),
                  ),
                ),
        ],),
      ),
    );
  }
}