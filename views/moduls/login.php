<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="d-flex justify-content-center py-4">
                            <a href="index.html" class="logo d-flex align-items-center w-auto">
                                <img src="views/images/logo.png" alt="">
                                <span class="d-none d-lg-block">CORSAE</span>

                            </a>
                        </div><!-- End Logo -->

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Acceso a tu cuenta</h5>
                                    <p class="text-center small">Ingresa tu usuario y contraseña para acceder</p>
                                </div>

                                <form class="row g-3" method="POST">

                                    <div class="col-12">
                                        <label for="yourUsername" class="form-label">Correo Electrónico</label>
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend"><i class="ri ri-user-2-fill"></i></span>
                                            <input type="email" name="email" class="form-control" id="email" value="admin@corsae.com.mx" required>
                                            <div class="invalid-feedback">Ingresa tu correo.</div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Contraseña</label>
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend"><i class="ri ri-lock-password-fill"></i></span>
                                            <input type="password" name="password" class="form-control" id="password" value="Whoami929" required>
                                            <div class="invalid-feedback">Ingresa tu contraseña</div>
                                        </div>
                                    </div>


                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Acceder</button>
                                    </div>
                                    <div class="col-12">
                                        <!--<p class="small mb-0">Don't have account? <a href="pages-register.html">Create an account</a></p>-->
                                    </div>
                                    <?php

                                    $login = new AccessController();
                                    $login->ctrAccessController();

                                    ?>
                                </form>


                            </div>
                        </div>

                        <div class="credits">

                        </div>

                    </div>
                </div>
            </div>

        </section>

    </div>
</main>
<script>
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }
</script>