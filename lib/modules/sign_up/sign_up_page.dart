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
                const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
            child: Column(
              children: [
                HeaderLogin(),
                SizedBox(height: 10),
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
                                    style: AppTextStyle.header24),
                                const DottedDivder(),
                                const SizedBox(height: 10),
                                Text('Tenha acesso as suas',
                                    style: AppTextStyle.regular18),
                                Text('finanças em qualquer lugar',
                                    style: AppTextStyle.regular18),
                              ],
                            ),

                            // Cadastre-se forms
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(color: AppColors.stroke),
                                const SizedBox(height: 10),
                                Text('Cadastre-se',
                                    style: AppTextStyle.header24),
                                Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Email
                                        Text("Email",
                                            style: AppTextStyle.regular),
                                        Container(
                                          height: 55,
                                          child: TextFormField(
                                            style: AppTextStyle.light,
                                            decoration: InputDecoration(
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
                                        ),
                                        // Senha
                                        SizedBox(height: 5),
                                        Text("Senha",
                                            style: AppTextStyle.regular),
                                        Container(
                                          height: 55,
                                          child: TextFormField(
                                            style: AppTextStyle.light,
                                            decoration: InputDecoration(
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
                                        ),
                                        // Confirme a senha
                                        SizedBox(height: 5),
                                        Text("Confirme a senha",
                                            style: AppTextStyle.regular),
                                        Container(
                                          height: 55,
                                          child: TextFormField(
                                            style: AppTextStyle.light,
                                            decoration: InputDecoration(
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
                                        ),

                                        const SizedBox(height: 10),

                                        // Cadastrar

                                        IntrinsicWidth(
                                          child: SizedBox(
                                            height: 35,
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
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        content: Text(
                                                            'Processing Data')),
                                                  );
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
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
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
          Spacer(),
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
