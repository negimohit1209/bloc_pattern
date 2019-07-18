class ValidationMixin{
  String validateEmail(String value) {
    if(! value.contains('@')) {
      return 'please enter a valid email address';
    }
    return null;
  }

  String validatePassword(String value){
    if(value.length < 4){
      return 'Password length should be greater then 4';
    }
    return null;
  }
}