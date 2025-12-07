program SigapBencana;
uses crt;

type // Deklarasi type record untuk menyimpan data laporan orang hilang
  laporhilang = record
    namaH, lok, tgl, info, telpon : string;
    umur : integer;
    jkel : char;
end;

var
  n : integer;

procedure garis; //Prosedur untuk menampilkan garis pembatas
begin
    writeln('-------------------------------------------------');
end;

procedure laporbencana; //Prosedur untuk menyimpan data-data dalam pembuatan laporan bencana
var
  laporan : array [1..6] of string; //Menggunakan array untuk menyimpan data isian dengan tipe yang sama

begin
    clrscr;
    writeln('--- Formulir Laporan Bencana ---');
    write('Nama Anda : '); 
    readln(laporan[1]);
    write ('Jenis bencana yang dialami : ');
    readln (laporan[2]);
    write('Lokasi Bencana : '); 
    readln(laporan[3]);
    write('Tanggal & Waktu Mulai Bencana (cth: 06-12-2025 13:00): '); 
    readln(laporan[4]);
    write('Nomor Telepon yang bisa dihubungi : '); 
    readln(laporan[5]);
    write('Informasi tambahan  : '); 
    readln(laporan[6]);

    garis;
    writeln('Terima kasih ', laporan[1], '. Laporan Anda sudah diterima dan akan segera diproses.');
    garis;
    writeln('Tekan Enter untuk kembali ke menu utama...'); 
    readln;
end;

procedure laporanorang; //Prosedur untuk menyimpan data-data dalam pembuatan laporan orang hilang
var 
  hilang : laporhilang;

begin
  clrscr;
  with hilang do //Penggunaan With pada record agar penulisan datanya lebih ringkas
  begin
    writeln('--- Formulir Laporan Orang Hilang ---');
    garis;
    write('Nama Orang yang Hilang: '); 
    readln(namaH);
    write('Umur Orang yang Hilang (tahun): '); 
    readln(umur);
    write('Jenis Kelamin Orang yang Hilang (L/P): ');
    readln (jkel);
    write('Lokasi Terakhir Dilihat   : '); 
    readln(lok);
    write('Tanggal & Waktu Kehilangan (Misal: 06-12-2025, 23:11 WIB): '); 
    readln(tgl);
    write('Nomor Telepon yang bisa dihubungi: '); 
    readln(telpon);
    write('Informasi tambahan: '); 
    readln(info);
    
    garis;
    writeln ('Informasi telah diterima, laporan akan diproses secepat mungkin. Terima Kasih!');
    writeln('Tekan Enter untuk kembali ke menu utama...');
    readln;
  end;
end;

procedure penanganan; //Prosedur yang menampilkan informasi/tips penanganan beberapa jenis bencana
var
  pilihan : integer;

begin
    clrscr;
    writeln('--- Informasi Penanganan Bencana ---');
    garis;
    writeln('1. Gempa Bumi');
    writeln('2. Banjir');
    writeln('3. Gunung Meletus');
    writeln('4. Tanah Longsor');
    write('Pilih menu informasi (1-4) : ');
    readln(pilihan);
    writeln;

    // Pemilihan informasi berdasarkan kondisi bencana yang dipilih menggunakan if else
    if pilihan = 1 then
    begin
        writeln('Berlindung di bawah meja/mebel yang kokoh atau dekat dinding dalam');
        writeln('Setelah guncangan berhenti, segera keluar bangunan dan hindari benda yang berpotensi jatuh/roboh');
    end
    else if pilihan = 2 then
    begin
        writeln('Jika terjadi banjir, segera pindah ke tempat yang lebih tinggi dan aman dari aliran air');
        writeln('Matikan listrik dan gas untuk mencegah korsleting atau kebakaran');
    end
    else if pilihan = 3  then
    begin
        writeln('Gunakan masker dan kacamata untuk menghindari abu vulkanik');
        writeln('Menjauh dari zona bahaya seperti sungai atau lembah yang dilewati lahar');
    end
    else if pilihan = 4 then
    begin
        writeln('Menjauhlah dari area lereng/tebing dan cari tempat terbuka yang aman');
        writeln('Waspadai longsor susulan dan jangan kembali ke area terdampak sebelum dinyatakan aman');
    end
    else
    begin
        write('Hanya Masukkan angka 1 sampai 4!');
    end;
    writeln;
    writeln('Tekan Enter untuk kembali ke menu utama...');
    readln;
end;
    
// Main Program
begin
  repeat // Menggunakan perulangan repeat, akan terus ditampilkan...
    clrscr;
    writeln('Selamat Datang di Program SigapBencana 2025');
    garis;
    writeln('1. Buat Laporan Bencana');
    writeln('2. Buat Laporan Orang Hilang');
    writeln('3. Informasi penanganan bencana');
    writeln('4. Keluar');
    garis;
    write('Pilih menu (1-4) : ');
    readln(n);

    case n of //Pemilihan prosedur berdasarkan menu yang dipilih pengguna menggunakan case of
     1: laporbencana;
     2: laporanorang;
     3: penanganan;
     end;
  until n = 4; //...sampai pengguna memilih 4 (Keluar)
    
  clrscr;
  writeln('Terima kasih sudah menggunakan SigapBencana.');
end.