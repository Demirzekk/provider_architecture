typedef FactoryData = Map<dynamic, Function>;
typedef RepositorieData = Map<dynamic, Manager>;

mixin IServiceLocator {
  T fetch<T>();
}

abstract class Manager {
  void dispose<T>();
}

class ServiceLocator extends Manager with IServiceLocator {
  final FactoryData _factories;
  final RepositorieData _repositories = <dynamic, Manager>{};
  // FactoryData get factorires => _factories;
  ServiceLocator(this._factories,  );
  @override
  void dispose<T>() {
    final Manager manager = _repositories[T]!;
    manager.dispose();
    _repositories.remove(T);
  }

  _add(T) => _repositories[T] = _factories[T]!();

  @override
  T fetch<T>() {
    return _repositories.containsKey(T) ? _repositories[T] : _add(T);
  }
}
