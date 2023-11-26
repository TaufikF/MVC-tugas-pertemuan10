CREATE TABLE tb_golongan (
    gol_id TINYINT(3) PRIMARY KEY,
    gol_kode VARCHAR(10),
    gol_nama VARCHAR(50),
    created_at TIMESTAMP,
    updated_at DATETIME
);

CREATE TABLE tb_users (
    user_id INT(11) PRIMARY KEY,
    user_email VARCHAR(50),
    user_password VARCHAR(100),
    user_nama VARCHAR(100),
    user_alamat TEXT,
    user_hp VARCHAR(25),
    user_pos VARCHAR(25),
    user_role TINYINT(2),
    user_aktif TINYINT(2),
    created_at TIMESTAMP,
    updated_at DATETIME
);

CREATE TABLE tb_pelanggan (
    pel_id INT(11) PRIMARY KEY,
    pel_id_gol TINYINT(3),
    pel_no VARCHAR(20),
    pel_nama VARCHAR(50),
    pel_alamat TEXT,
    pel_hp VARCHAR(20),
    pel_ktp VARCHAR(50),
    pel_seri VARCHAR(50),
    pel_meteran INT(11),
    pel_aktif ENUM('Y', 'N'),
    pel_id_user INT(11),
    created_at TIMESTAMP,
    updated_at DATETIME,
    FOREIGN KEY (pel_id_gol) REFERENCES tb_golongan(gol_id), 
    FOREIGN KEY (pel_id_user) REFERENCES tb_users(user_id) 
);