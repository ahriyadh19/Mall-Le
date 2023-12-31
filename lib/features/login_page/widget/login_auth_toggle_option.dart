import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:mall_le/features/login_page/bloc/events/button_auth_toggle_login_method_event.dart';
import 'package:mall_le/features/login_page/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login_page/bloc/states/login_states_changes.dart';

class AuthToggleOption extends StatelessWidget {
  const AuthToggleOption({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocBloc, LoginBlocState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: FlutterToggleTab(
            width: 68,
            borderRadius: 10,
            selectedIndex: state is LoginStateChange ? (state.option) : 0,
            selectedTextStyle: const TextStyle(
              color: Colors.white,
            ),
            unSelectedTextStyle: const TextStyle(
              color: Colors.grey,
            ),
            labels: const [
              'OTP SMS',
              'Password',
            ],
            icons: const [
              Icons.sms_rounded,
              Icons.lock_person_rounded,
            ],
            selectedLabelIndex: (index) {
              context.read<LoginBlocBloc>().add(ButtonAuthToggleLoginMethodEvent(option: index));
            },
            marginSelected: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          ),
        );
      },
    );
  }
}
