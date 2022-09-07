import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:finance_app/shared/themes/app_text_style.dart';
import 'package:finance_app/shared/widgets/footer.dart';
import 'package:finance_app/shared/widgets/headerLogin.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFDBDCFD), Color(0xFFEEEEEE)],
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Column(
              children: [
                const HeaderLogin(),
                const SizedBox(height: 60),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.white),
                        child: Column(
                          children: [
                            // Organize seu futuro
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Organize seu futuro',
                                    style: AppTextStyle.header22),
                                const DottedDivder(),
                                const SizedBox(height: 10),
                                Text('Tenha acesso as suas',
                                    style: AppTextStyle.subtitulo),
                                Text('finanças em qualquer lugar',
                                    style: AppTextStyle.subtitulo),
                              ],
                            ),
                            // Cadastre-se forms
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Divider(color: AppColors.stroke),
                                  const SizedBox(height: 10),
                                  // Titulo de cadastrese
                                  Text('Cadastre-se',
                                      style: AppTextStyle.header22),
                                  // O formulario
                                  Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Email
                                          const SizedBox(height: 5),
                                          Text("Email",
                                              style: AppTextStyle.regular),
                                          TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            style: AppTextStyle.light,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 5),
                                              hintText: 'olaph@bytejr.com',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: AppColors.stroke,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: AppColors.stroke,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'email can\'t be empty';
                                              }
                                              bool emailValid = RegExp(
                                                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                                  .hasMatch(value);
                                              return emailValid
                                                  ? null
                                                  : "Invalid email";
                                            },
                                          ),
                                          // Senha
                                          const SizedBox(height: 5),
                                          Text("Senha",
                                              style: AppTextStyle.regular),
                                          TextFormField(
                                            obscureText: true,
                                            style: AppTextStyle.light,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 5),
                                              hintText: '**************',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: AppColors.stroke,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: AppColors.stroke,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Password can\'t be empty';
                                              }
                                              return null;
                                            },
                                          ),
                                          // Confirme a senha
                                          const SizedBox(height: 5),
                                          Text("Confirme a senha",
                                              style: AppTextStyle.regular),
                                          TextFormField(
                                            obscureText: true,
                                            style: AppTextStyle.light,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3,
                                                      horizontal: 5),
                                              hintText: '**************',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: AppColors.stroke,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: AppColors.stroke,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Password can\'t be empty';
                                              }

                                              return null;
                                            },
                                          ),

                                          const SizedBox(height: 15),

                                          // Cadastrar

                                          SizedBox(
                                            height: 35,
                                            width: 105,
                                            child: ElevatedButton(
                                              style: TextButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5,
                                                          left: 5,
                                                          top: 10,
                                                          bottom: 10),
                                                  backgroundColor:
                                                      AppColors.blue2),
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  Navigator
                                                      .pushReplacementNamed(
                                                          context, '/home');
                                                }
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Cadastrar',
                                                    style:
                                                        AppTextStyle.addButton,
                                                  ),
                                                  const Icon(
                                                    Icons.done_rounded,
                                                    color: AppColors.white,
                                                    size: 16,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          // Ja possui uma conta??
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              color: AppColors.blue1,
                                              width: 1,
                                            ))),
                                            child: Text(
                                                'Ja possui uma conta? entre agora',
                                                style: AppTextStyle.light),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DottedDivder extends StatelessWidget {
  const DottedDivder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.blue1,
                  borderRadius: BorderRadius.circular(3)),
              height: 3,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.blue1,
                  borderRadius: BorderRadius.circular(3)),
              height: 3,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.blue1,
                  borderRadius: BorderRadius.circular(3)),
              height: 3,
            ),
          ),
        ],
      ),
    );
  }
}
