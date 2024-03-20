import 'package:flutter/material.dart';
import 'package:flutter_components_test/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValue ={
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'rol': '',
    };

    return Scaffold (
      appBar:  AppBar(
        title:  const Center(
          child: Text('Inputs y Forms'),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.purple[900],
              foregroundColor: Colors.white,
              child: const Text('AC'),
            ),
          )
        ],     
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Ej: Anbal',
                  suffixIcon: Icons.person_outline_outlined,
                  formProperty: 'first_name',
                  formValues: formValue,
                ),
                const SizedBox(height: 30,),
            
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Ej: Chafardet',
                  suffixIcon: Icons.person_outline_outlined,
                  formProperty: 'last_name',
                  formValues: formValue,
                ),
                const SizedBox(height: 30,),
            
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Ej: Chafardet@gmail.com',
                  suffixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValue,
                ),
                const SizedBox(height: 30,),
            
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Ej: Usuario-1',
                  suffixIcon: Icons.email_outlined,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValue,
                ),
                const SizedBox(height: 30,),
            
                DropdownButtonFormField<String>(
                  value: 'user',
                  items: const [
                    DropdownMenuItem(value: 'admin', child: Text('Administrador')),
                    DropdownMenuItem(value: 'user', child: Text('Usuario')),
                    DropdownMenuItem(value: 'client', child: Text('Cliente')),
                    DropdownMenuItem(value: 'user_blocked', child: Text('Usuario bloqueado')),
                  ], 
                  onChanged: (value) {
                    formValue['rol'] = value ?? 'user';
                  },
                ),
                const SizedBox(height: 30,),
                
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );

                    if(!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValue);
                  
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center( 
                      child: Text(
                        'Guardar',
                        style: TextStyle(color: Colors.white)
                      ) 
                    ),
                  )
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

