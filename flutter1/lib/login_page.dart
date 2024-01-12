import 'package:flutter/material.dart';
import 'package:flutter1/home_page.dart';
import 'package:flutter1/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: (Colors.black87)
            ),
            child: Column(
              children: [
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
                      Icons.home_work,
                      size: 45,
                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Hedef Asistanı",
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
                    controller: userName,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Kullanıcı Adınızı Girin",
                      prefixIcon: Icon(Icons.people_alt_outlined)
                    ),
                    validator: (value){
                      if (value == "") {
                        return "Kullanıcı Adını Giriniz";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (userName){
                      userName = userName;
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20) 
                  ),
                  margin: EdgeInsets.only(top: 20,bottom: 20,right: 30,left: 30),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    controller: passWord,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Şifrenizi Girin",
                      prefixIcon: Icon(Icons.key)
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Giriş Yap Butonu Tıklandı");
                    if(userName.text.length < 3){                
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Kullanıcı Adınızı Kontrol Ediniz !",textAlign: TextAlign.center,),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 7),
                        ));
                    }
                    else if(passWord.text.length < 2){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Şifrenizi Kontrol Ediniz !",textAlign: TextAlign.center,),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 7),
                        ));
                    }
                    else if(userName.text == 'mbabagil' && passWord.text == '7777'){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("HATALI GİRİŞ !",textAlign: TextAlign.center,),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 7),
                        ));
                    }                   
                  },
                  child: Container(
                    //margin: EdgeInsets.symmetric(horizontal: 50),
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
                    child: Center(child: Text("Giriş Yap")),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Kayıt ButonuTıklandı");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));                                     
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
                    child: Center(child: Text("Kayıt Ol")),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}