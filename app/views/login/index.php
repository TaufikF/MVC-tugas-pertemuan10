<h1>Login</h1>
<hr>
<form action="<?= URL; ?>/login/proses" method="POST">
    <div class="mb-3">
        <label for="user_email" class="form-label">Email</label>
        <input type="email" class="form-control" id="user_email" name="user_email" autofocus required>
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-primary w-25" name="login">Login</button>
    </div>
    <p class="text-center mt-5">By ' &#10084; <a href="https://www.instagram.com/fiikfadillah/" target="__blank">FiikFadillah</a></p>
</form>
