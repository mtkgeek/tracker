
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:tracker/app/home/job_entries/format.dart';


void main() {

  group('hour', () {  
    test('positive', () {
      expect(Format.hours(10), '10h');
    });

    test('zero', () {
      expect(Format.hours(0), '0h');
    });

    test('negative', () {
      expect(Format.hours(-4), '0h');
    });

    test('decimals', () {
      expect(Format.hours(6.8), '6.8h');
    });

  });


   group('date - GB Locale', () {  

    setUp(() async {
      Intl.defaultLocale = 'en_GB';
      await initializeDateFormatting(Intl.defaultLocale);
    });
    test('2020-5-2', () {
      expect(Format.date(DateTime(2020, 5, 2)), '2 May 2020');
    });

  });

  group('dayOfWeek - GB Locale', () {  

    setUp(() async {
      Intl.defaultLocale = 'en_GB';
      await initializeDateFormatting(Intl.defaultLocale);
    });
    test('Saturday', () {
      expect(Format.dayOfWeek(DateTime(2020, 5, 2)), 'Sat');
    });

  });

  group('dayOfWeek - ES Locale', () {  

    setUp(() async {
      Intl.defaultLocale = 'es';
      await initializeDateFormatting(Intl.defaultLocale);
    });
    test('Sábado', () {
      expect(Format.dayOfWeek(DateTime(2020, 5, 2)), 'sáb.');
    });

  });



  group('currency', () { 

    setUp(() async {
      Intl.defaultLocale = 'en_US';
    });

    test('positive', () {
      expect(Format.currency(10), '\$10');
    });

    test('zero', () {
      expect(Format.currency(0), '');
    });

    test('negative', () {
      expect(Format.currency(-4), '-\$4');
    });

    test('decimals', () {
      expect(Format.currency(8.4), '\$8');
    });

    test('decimals', () {
      expect(Format.currency(8.5), '\$9');
    });

  });
}