class ValidationMixin{
  String validateEmail(String value){
    return (value.contains('@')) ? null : 'Invalid email address';
  }

  String validatePassword(String value){
    return (value.length >= 4) ? null : 'Invalid password';
  }
}