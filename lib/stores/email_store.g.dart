// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailStore on _EmailStore, Store {
  final _$buttonEnableAtom = Atom(name: '_EmailStore.buttonEnable');

  @override
  bool get buttonEnable {
    _$buttonEnableAtom.context.enforceReadPolicy(_$buttonEnableAtom);
    _$buttonEnableAtom.reportObserved();
    return super.buttonEnable;
  }

  @override
  set buttonEnable(bool value) {
    _$buttonEnableAtom.context.conditionallyRunInAction(() {
      super.buttonEnable = value;
      _$buttonEnableAtom.reportChanged();
    }, _$buttonEnableAtom, name: '${_$buttonEnableAtom.name}_set');
  }

  final _$_EmailStoreActionController = ActionController(name: '_EmailStore');

  @override
  void changeEmail(dynamic value) {
    final _$actionInfo = _$_EmailStoreActionController.startAction();
    try {
      return super.changeEmail(value);
    } finally {
      _$_EmailStoreActionController.endAction(_$actionInfo);
    }
  }
}
