<?php

class Koneksi {
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "nama_database_kamu"; // Sesuaikan dengan nama database pendaftaranmu
    protected $conn;

    // Constructor otomatis membuka koneksi saat objek dibuat
    public function __construct() {
        $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database);

        // Memeriksa jika koneksi mengalami kegagalan
        if ($this->conn->connect_error) {
            die("<div style='color:red; padding:20px; background:#ffe4e6;'><strong>Koneksi Database Gagal:</strong> " . $this->conn->connect_error . "</div>");
        }
    }
}