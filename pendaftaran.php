<?php
// Menggunakan kata kunci 'abstract' sebagai blueprint utama
abstract class Pendaftaran {
    
    // Properti Terenkapsulasi (protected)
    protected $id_pendaftaran;
    protected $nama_calon;
    protected $asal_sekolah;
    protected $nilai_ujian;
    protected $biayaPendaftaranDasar; // Menggunakan camelCase

    /**
     * Constructor untuk memetakan (mapping) nilai properti dari kolom tabel database
     */
    public function __construct($dataRow) {
        $this->id_pendaftaran        = $dataRow['id_pendaftaran'];
        $this->nama_calon            = $dataRow['nama_calon'];
        $this->asal_sekolah          = $dataRow['asal_sekolah'];
        $this->nilai_ujian            = $dataRow['nilai_ujian'];
        $this->biayaPendaftaranDasar = $dataRow['biaya_pendaftaran_dasar'];
    }

    abstract public function hitungTotalBiaya();
    abstract public function tampilkanKarakteristikSpesifik();

    public function infoDasarPendaftar() {
        echo "<strong>ID Pendaftaran:</strong> " . $this->id_pendaftaran . "<br>";
        echo "<strong>Nama Calon:</strong> " . $this->nama_calon . "<br>";
        echo "<strong>Asal Sekolah:</strong> " . $this->asal_sekolah . "<br>";
        echo "<strong>Nilai Ujian:</strong> " . $this->nilai_ujian . "<br>";
        echo "<strong>Biaya Dasar:</strong> Rp " . number_format($this->biayaPendaftaranDasar, 0, ',', '.') . "<br>";
    }
}