@extends('layouts.app')

@section('breadcrump')
<li><a href="{{ url('/') }}">Home</a></li>
<li class="active">Tentang</li>
@endsection

@section('content')
@include('layouts.aside')
<div class="col-md-9">
	<!-- <div class="jumbotron">
        <p>Selamat datang  di <strong>SISTEM PAKAR HAMA DAN PENYAKIT PADI</strong>, untuk memulai konsultasi silahkan klik tombol dibawah ini :</p> 
        <p><a href="{{ route('pasienForm') }}" class="btn btn-primary">Konsultasi</a></p>
    </div> -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Tentang Aplikasi Ini.</strong>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<label><strong>Identitas Pembuat : </strong></label>
				</div>
				<div class="col-md-2">Nama</div>
				<div class="col-md-9">: LILIAN MEGALIN WIPARGO OEI</div>
				<div class="col-md-2">Stambuk</div>
				<div class="col-md-9">: 17.023.55.202.025</div>
				<div class="col-md-2">Jurusan</div>
				<div class="col-md-9">: Teknik Informatika</div>
				<div class="col-md-2">Fakultas</div>
				<div class="col-md-9">: Teknik</div>
				<div class="col-md-2">Universitas</div>
				<div class="col-md-9">: Universitas Andi Djemma Palopo</div>
			</div>
			<div class="row">
				<hr>
				<div class="col-md-12">
					<label><strong>Tujuan Pembuatan :</strong></label>
					<p>Aplikasi ini dibuat sebagai salah satu syarat akhir dari pembuatan skripsi, untuk memenuhi syarat
						tersebut peneliti membuat sebuah judul <strong>"Sistem Pakar Diagnosa Hama dan Penyakit
							Padi"</strong>.</p>
				</div>
			</div>
			<div class="row">
				<hr>
				<div class="col-md-1" style="padding-right: 0;">
					<strong><i>Note :</i></strong>
				</div>
				<div class="col-md-11" style="padding-left: 0;">
					<p>
						Aplikasi ini tidak dibuat murni dari pemikiran saya sendiri.<br>
						Tapi saya mengambil referensi sepotong dari jurnal ini <strong><a
								href="{{ asset('file/referensi.pdf') }}" target="_blank">jurnal ini</a></strong> sebagai
						referensi untuk menyelesaikan sistem
						pakar ini.
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection