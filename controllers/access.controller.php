<?php
session_start();
class AccessController
{
    /*=============================================
	INGRESO DE USUARIOS
	=============================================*/

    public function ctrAccessController()
    {
        if (isset($_POST["email"]) && isset($_POST["password"])) {
            if (
                preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["email"]) &&
                preg_match('/^[a-zA-Z0-9]+$/', $_POST["password"])
            ) {
                $encriptar = crypt($_POST["password"], '$2a$07$asxx54ahjppf45sd87a5a4dDDGsystemdev$');

                $tabla = "usuarios";
                $item = "correo";
                $valor = $_POST["email"];

                $respuesta = ModelTemplate::mdlShowUsers($tabla, $item, $valor);

                if ($respuesta["correo"] == $_POST["email"] && $respuesta["password"] == $encriptar) {
                    $_SESSION["sessionCorsae"] = "ok";
                    $_SESSION["id"] = $respuesta["id"];
                    $_SESSION["nombre"] = $respuesta["nombre"];
                    $_SESSION["grupo"] = $respuesta["grupo"];
                    $_SESSION["perfil"] = $respuesta["perfil"];
                    $_SESSION["template"] = $respuesta["template"];
                    $dashboard = $respuesta["template"];

                    echo '<script>

							window.location = "' . $dashboard . '";

						</script>';
                } else {
                    echo '<script>
					Swal.fire({
						icon: "error",
						title: "Oops...",
						text: "El usuario o la contraseña son incorrectos!",
						confirmButtonColor: "#3085d6",
						confirmButtonText: "Entendido"
						
					  });
					</script>';
                }
            }
        }
    }
}
