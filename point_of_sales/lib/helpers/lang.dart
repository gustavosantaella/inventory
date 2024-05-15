import "package:point_of_sales/config/constants.dart";

String lang(String key, {String? lang}) {
  String l = lang ?? ConstApp.lang.defaultLang;
  Map<String, Map<String, String>> map = {
    "es": {
      "Easy Management for your Store": "Facil de manejar para tu local ",
      "Log in as Owner": "Iniciar sesion como Administrador",
      "Log in as Employee": "Iniciar sesion como Empleado",
      "Log in": "Iniciar sesion",
      "Create new account": "Crear nueva cuenta",
    },
    "en": {}
  };

  return map[l]?[key] ?? key;
}
