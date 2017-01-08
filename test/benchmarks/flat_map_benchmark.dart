import 'package:benchmark_harness/benchmark_harness.dart';

import 'package:rxdart/rxdart.dart' as rx;

import 'benchmark_utils.dart';

void main() => FlatMapBenchmark.main();

class FlatMapBenchmark extends BenchmarkBase {

  FlatMapBenchmark() : super("flatMap");

  static void main() => new FlatMapBenchmark().report();

  @override void run() {
    rx.observable(range())
        .flatMap((int i) => range())
        .listen(null);
  }
}