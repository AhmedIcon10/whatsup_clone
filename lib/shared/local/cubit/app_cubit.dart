import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/shared/local/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(InitialState());
  AppCubit get(context)=>BlocProvider.of(context);


}