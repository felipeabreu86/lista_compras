import 'package:flutter/material.dart';
import '/app/views/screens/historico/historico.dart';
import '/app/views/screens/lista_compras/lista_compras.dart';

class HomeViewModel extends ChangeNotifier {
  /// Lista de telas.
  final List<Widget> _screens = [
    ListaComprasScreen(),
    HistoricoScreen(),
  ];

  /// Armazena o índice da tela selecionada.
  int _indexScreen = 0;

  /// Retorna o índice da tela selecionada.
  int get currentScreenIndex => _indexScreen;

  /// Indica se o float buttom deve ser exibido ou não.
  bool get floatButtonVisibility => _indexScreen == 0 ? true : false;

  /// Retorna se o [index] é o mesmo índice [_indexScreen] tela ativa.
  bool isScreenActive(int index) => index == _indexScreen;

  /// Executa a lógica inical da tela [HomeScreen].
  runHomeStartupLogic() {}

  /// Retorna a tela atual por meio do índice selecionado [_indexScreen].
  Widget getScreen() {
    return _screens[_indexScreen];
  }

  /// Atualiza o índice das telas e notifica os ouvintes.
  void bottomNavBarItemOnPress(int index) {
    _indexScreen = index;
    notifyListeners();
  }
}
