import 'package:flutter/material.dart';
import 'package:flutter_api_rest/Utils/responsive.dart';
import 'package:flutter_api_rest/pages/resgister_page.dart';
import 'input_text.dart';

class RegisterForm extends StatefulWidget {
  
  const RegisterForm({ Key? key }) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
    GlobalKey <FormState> _formKey = GlobalKey();
    String  _email = '',_password='',_username = ''; 
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
                label: 'Nombre de Usuario',
                fontSize: responsive.dp(responsive.isTablet? 1.2 : 1.4),
                onChanged: (text){
                  _username = text;
                },
                validator: (text){
                 //en este campo se validaran las cajas de texto
                        return null;
                },
              ),
              SizedBox(height: responsive.dp(2)),
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
              SizedBox(height: responsive.dp(5)),
              IntputText(
                keyboardType: TextInputType.emailAddress,
                label: 'Password',
                fontSize: responsive.dp(responsive.isTablet? 1.2 : 1.4),
                onChanged: (text){
                  _password = text;
                },
                validator: (text){
                 //en este campo se validaran las cajas de texto
                        return null;
                },
              ),
              SizedBox(height: responsive.dp(5)),
              SizedBox(
                width: double.infinity,
                child:FlatButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: 
                    Text('Registrarse',style: TextStyle(color: Colors.white,fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.6),)),
                    onPressed: this._submit,
                    color: Colors.deepOrangeAccent,
                  ),
              ),
              SizedBox(height: responsive.dp(2),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Terminos y condiciones',style: TextStyle(fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.4)),),
                  FlatButton(child: Text('Iniciar Sesion',style: TextStyle(color: Colors.deepOrange,fontSize:  responsive.dp(responsive.isTablet? 1.2 : 1.4)),),
                  onPressed: (){
                    Navigator.pop(context);
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