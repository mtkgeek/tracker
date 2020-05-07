import 'package:flutter_test/flutter_test.dart';
import 'package:tracker/app/home/models/job.dart';

void main() {
  group('fromMap', () {
    test('null data', () {
      final job = Job.fromMap(null, 'abc');
      expect(job, null);
    });
    test('null data', () {
      final job = Job.fromMap({
        'name': 'blogging',
        'ratePerHour': 10,
      }, 'abc');
      expect(job, Job(name: 'blogging', ratePerHour: 10, id: 'abc'));
    });
    test('null data', () {
      final job = Job.fromMap({
        'ratePerHour': 10,
      }, 'abc');
      expect(job, null);
    });
  });

//tests for the toMap method
  group('toMap', () {
    test('valid name, ratePerHour', () {
      final job = Job(name: 'blogging', ratePerHour: 10, id: 'abc');
      expect(job.toMap(), {'name': 'blogging', 'ratePerHour': 10});
    });
    
  });
}