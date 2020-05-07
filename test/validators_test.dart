
import 'package:flutter_test/flutter_test.dart';
import 'package:tracker/app/sign_in/validators.dart';


void main() {
  test('non-empty string', () async {  
    final validator = NonEmptyStringValidator();
    // Verify that our validator returns true for a non empty sring.
    expect(validator.isValid('test'), true);   
  });

  test('empty string', () async {  
    final validator = NonEmptyStringValidator();
    // Verify that our validator returns true for a non empty sring.
    expect(validator.isValid(''), false);   
  });

  test('null string', () async {  
    final validator = NonEmptyStringValidator();
    // Verify that our validator returns true for a non empty sring.
    expect(validator.isValid(null), false);   
  });
}
