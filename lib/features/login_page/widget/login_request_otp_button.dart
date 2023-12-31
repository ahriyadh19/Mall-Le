import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login_page/bloc/events/request_send_otp_event.dart';
import 'package:mall_le/features/login_page/bloc/login_bloc_bloc.dart';

class LoginRequestOtpButton extends StatelessWidget {
  const LoginRequestOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        child: const Icon(
          Icons.perm_phone_msg_rounded,
        ),
        onPressed: () {
          context.read<LoginBlocBloc>().add(RequestSendOTPEvent());
        },
      ),
    );
  }
}
