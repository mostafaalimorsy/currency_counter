abstract class CounterMoneyAppLoginStates {}



class IntialCounterMoneyAppLoginStates extends CounterMoneyAppLoginStates {}
class CounterMoneyAppLoadingStates extends CounterMoneyAppLoginStates {}
class CounterMoneyAppScuccessStates extends CounterMoneyAppLoginStates {
  final String Uid;

  CounterMoneyAppScuccessStates(this.Uid);
}
class CounterMoneyAppErrorStates extends CounterMoneyAppLoginStates {}

class CounterMoneyChangPasswordVisabilityStates extends CounterMoneyAppLoginStates {}




class CounterMoneyAppLoadingRigesterStates extends CounterMoneyAppLoginStates {}
class CounterMoneyAppScuccessRigesterStates extends CounterMoneyAppLoginStates {}
class CounterMoneyAppErrorRigesterStates extends CounterMoneyAppLoginStates {}

class CounterMoneyChangPasswordVisabilityRigesterStates extends CounterMoneyAppLoginStates {}