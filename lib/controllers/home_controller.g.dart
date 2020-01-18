// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$pesoControllerAtom = Atom(name: '_HomeController.pesoController');

  @override
  MaskedTextController get pesoController {
    _$pesoControllerAtom.context.enforceReadPolicy(_$pesoControllerAtom);
    _$pesoControllerAtom.reportObserved();
    return super.pesoController;
  }

  @override
  set pesoController(MaskedTextController value) {
    _$pesoControllerAtom.context.conditionallyRunInAction(() {
      super.pesoController = value;
      _$pesoControllerAtom.reportChanged();
    }, _$pesoControllerAtom, name: '${_$pesoControllerAtom.name}_set');
  }

  final _$alturaControllerAtom = Atom(name: '_HomeController.alturaController');

  @override
  MaskedTextController get alturaController {
    _$alturaControllerAtom.context.enforceReadPolicy(_$alturaControllerAtom);
    _$alturaControllerAtom.reportObserved();
    return super.alturaController;
  }

  @override
  set alturaController(MaskedTextController value) {
    _$alturaControllerAtom.context.conditionallyRunInAction(() {
      super.alturaController = value;
      _$alturaControllerAtom.reportChanged();
    }, _$alturaControllerAtom, name: '${_$alturaControllerAtom.name}_set');
  }

  final _$resultadoAtom = Atom(name: '_HomeController.resultado');

  @override
  Container get resultado {
    _$resultadoAtom.context.enforceReadPolicy(_$resultadoAtom);
    _$resultadoAtom.reportObserved();
    return super.resultado;
  }

  @override
  set resultado(Container value) {
    _$resultadoAtom.context.conditionallyRunInAction(() {
      super.resultado = value;
      _$resultadoAtom.reportChanged();
    }, _$resultadoAtom, name: '${_$resultadoAtom.name}_set');
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  dynamic obterResultado() {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.obterResultado();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }
}
