url = window.location.pathname;
ruta = url.split("/");
switch (ruta[2]) {
  case "preventas":
    listadoPreventas(1);
    break;
  case "anticipos":
    listadoAnticipos(1);
    break;
  case "recetas":
    listadoRecetas(1);
    break;
  case "consultas":
    listadoConsultas(1);
    break;
}
/****
 * Inicializacion de tablas
 */
function listadoPreventas(page) {}
function listadoAnticipos(page) {}
function listadoRecetas(page) {}
function listadoConsultas(page) {}

/****
 * Funciones de procesos
 */
