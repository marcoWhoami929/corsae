<?php

/*
	CONTROLLERS
 */
require_once "controllers/template.controller.php";
require_once "controllers/access.controller.php";

/*
MODELS
 */
require_once "models/template.model.php";
/*
/*
OTHERS
 */
require_once "models/rutas.php";

$plantilla = new ControladorPlantilla();
$plantilla->plantilla();
