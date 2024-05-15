lang(String key, {String lang = "es"}) {
  Map<String, dynamic> map = {
    "es": {
      "Easy Management for your Store": "Facil de manejar para tu local ",
      "Log in as Owner": "Iniciar sesion como Administrador",
      "Log in as Employee": "Iniciar sesion como Empleado",
      "Log in": "Iniciar sesion",
      "Create new account": "Crear nueva cuenta",
    },
    "en": {}
  };

  return map[lang]?[key] ?? key;
}
