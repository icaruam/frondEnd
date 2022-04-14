import 'package:flutter/material.dart';
import 'package:flutter_api_rest/Utils/responsive.dart';
import 'package:flutter_api_rest/pages/resgister_page.dart';
import 'input_text.dart';

class LoginForm extends StatefulWidget {
  
  const LoginForm({ Key? key }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
    GlobalKey <FormState> _formKey = GlobalKey();
    String  _email = '',_password=''; 
  _submit() {
   final isOk = _formKey.currentState?.validate();
   print("es correcto: $isOk");
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 300),

        child: Form(
          key: _formKey,
          child: Column(
            children: [
                IntputText(
                keyboardType: TextInputType.emailAddress,
                label: 'Correo Electronico',
                fontSize: responsive.dp(responsive.isTablet? 1.2 : 1.4),
                onChanged: (text){
                  _email = text;
                  
                },
                validator: (text){
                 //en este campo se validaran las cajas de texto
                        return null;
                },
              ),
              SizedBox(height: responsive.dp(2)),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.black26,
                  ),),
                ),
                
                child: Row(
                  children: [
                     Expanded(child: IntputText(
                        label: ' Password',
                        obscureText: true,
                        borderEnable: false,
                        fontSize: responsive.dp(responsive.isTablet? 1.2 : 1.4),
                        onChanged: (text){
                          _password = text;
                        },
                        validator: (text){
                         //en este apartado se validaran los campos
                         return null;
                        },
                      ),
                    ),
                    FlatButton(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child:  Text('¿Olvidaste tu contraseña?',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.4)),
                            ),
                      onPressed: (){
        
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: responsive.dp(5)),
              SizedBox(
                width: double.infinity,
                child:FlatButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: 
                    Text('Iniciar Sesion',style: TextStyle(color: Colors.white,fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.6),)),
                    onPressed: this._submit,
                    color: Colors.deepOrangeAccent,
                  ),
              ),
              SizedBox(height: responsive.dp(2),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('¿Eres nuevo en la plataforma?',style: TextStyle(fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.4)),),
                  FlatButton(child: Text('Registrate',style: TextStyle(color: Colors.deepOrange,fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.4)),),
                  onPressed: (){
                    Navigator.pushNamed(context, 'register');
                  },
                  ),
                ],
              ),
              SizedBox(height: responsive.dp(10)),
            ],
          ),
        ),
      ),
    
    );
  }
}