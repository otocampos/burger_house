class FlutterApply<T> {
  final T _target;

  FlutterApply(this._target);

  FlutterApply<T> call(void Function(T) block) {
    block(_target);
    return this;
  }
}

extension ApplyExtension<T> on T {
  FlutterApply<T> apply(void Function(T) block) {
    return FlutterApply<T>(this)(block);
  }
}