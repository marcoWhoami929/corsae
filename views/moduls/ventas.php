<main id="main" class="main">

    <div class="pagetitle">
        <h1>Ventas</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="inicio">Inicio</a></li>
                <li class="breadcrumb-item active">Ventas</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <div class="col-12">
                <div class="card recent-sales overflow-auto">

                    <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                            <li class="dropdown-header text-start">
                                <h6>Filtro</h6>
                            </li>
                            <li><a class="dropdown-item" href="#">Hoy</a></li>
                            <li><a class="dropdown-item" href="#">Mes</a></li>
                            <li><a class="dropdown-item" href="#">Año</a></li>
                        </ul>
                    </div>

                    <div class="card-body">
                        <h5 class="card-title">Ventas Recientes<span>| Hoy</span></h5>

                        <table class="table table-borderless datatable">
                            <thead>
                                <tr>
                                    <th>
                                        Folio
                                    </th>
                                    <th>Fecha</th>
                                    <th>Optometrista</th>
                                    <th>Nombre Cliente</th>
                                    <th>Total</th>
                                    <th>Acciones</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>26/02/2024</td>
                                    <td>Curicó</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 1,200.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>26/02/2024</td>
                                    <td>Dhanbad</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 1,500.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>26/02/2024</td>
                                    <td>Norman</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 1,300.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>24/02/2024</td>
                                    <td>Amqui</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 1,200.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>23/02/2024</td>
                                    <td>Kempten</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 1,100.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>22/02/2024</td>
                                    <td>Enines</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 800.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>22/02/2024</td>
                                    <td>Neath</td>
                                    <td>Lorem ipsum dolor</td>
                                    <td>$ 700.00</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-star me-1"></i>Detalle</button>
                                        <button type="button" class="btn btn-danger"><i class="bi bi-clipboard-x me-1"></i>Cancelar</button>

                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>

                </div>
            </div>

        </div>
    </section>

</main><!-- End #main -->
<div class="modal fade" id="largeModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detalle</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Multi Columns Form -->
                <form class="row g-3">
                    <div class="col-md-12">
                        <label for="inputName5" class="form-label">Nombre Completo</label>
                        <input type="text" class="form-control" id="inputName5" readonly value="lorem Ipsum">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail5" class="form-label">Fecha</label>
                        <input type="date" class="form-control" id="inputEmail5" readonly value="2024-02-26">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword5" class="form-label">Optometrista</label>
                        <input type="text" class="form-control" id="inputPassword5" readonly value="lorem Ipsum">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress5" class="form-label">Domicilio</label>
                        <input type="text" class="form-control" id="inputAddres5s" placeholder="1234 Main St">
                    </div>

                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Ciudad</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="col-md-4">
                        <label for="inputState" class="form-label">Estado</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <label for="inputZip" class="form-label">Cp</label>
                        <input type="text" class="form-control" id="inputZip">
                    </div>

                    <div class="text-center">

                    </div>
                </form><!-- End Multi Columns Form -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div><!-- End Large Modal-->