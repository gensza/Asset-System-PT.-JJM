<div class="content-page">
    <div class="content">
        <!-- Start Content-->
        <div class="container-fluid">
            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <div class="page-title-right">
                        </div>
                        <h4 class="page-title">Input Assets</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="<?= base_url('DataAssets/addAssets') ?>" method="POST">
                                <div class="row">
                                    <div class="form-group col-3">
                                        <label for="">Category*</label>
                                        <select name="category" id="category" class="form-control" required>
                                            <option value="" selected disabled>- Select category - </option>
                                            <?php foreach ($category as $c) : ?>
                                                <option value="<?= $c['id_qty'] ?>"><?= $c['category'] ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-3">
                                        <label for="">Kode Asset*</label>
                                        <input type="text" class="form-control" id="kode_asset" name="kode_asset" placeholder="Kode Asset" required>
                                    </div>
                                    <div class="form-group col-3">
                                        <label for="">Type</label>
                                        <input type="text" class="form-control" id="type" name="type" placeholder="Type">
                                    </div>
                                    <div class="form-group mb-1 col-3">
                                        <label for="">Serial Number</label>
                                        <input type="text" class="form-control" id="serial_number" name="serial_number" placeholder="Serial Number">
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="form-group mb-1 col-3" style="display:none">
                                        <label for="">PT*</label>
                                        <select name="id_pt" id="id_pt" class="form-control" required>
                                            <?php foreach ($pt as $p) : ?>
                                                <option value="<?= $p['id_pt'] ?> selected"><?= $p['alias'] ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-4">
                                        <label for="">User</label>
                                        <input type="text" class="form-control" id="user" name="user" placeholder="User">
                                    </div>
                                    <div class="form-group mb-1 col-4">
                                        <label for="">Divisi/Department*</label>
                                        <select name="divisi" id="divisi" class="form-control" required>
                                            <option value="" selected disabled>- Select Divisi - </option>
                                        </select>
                                    </div>
                                    <div class="form-group mb-1 col-4">
                                        <!-- blm di tambahkan -->
                                        <label for="">Jabatan</label>
                                        <input class="form-control" type="text" id="jabatan" name="jabatan" placeholder="Jabatan">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group mb-1 col-2">
                                        <label for="">Satuan</label>
                                        <select name="satuan" id="satuan" class="form-control">
                                            <option value="" selected disabled>- Select Satuan - </option>
                                            <option value="unit">Unit</option>
                                            <option value="pcs">Pcs</option>
                                            <option value="set">Set</option>
                                            <option value="tower">Tower</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-3">
                                        <label for="">No PO</label>
                                        <input type="text" class="form-control" id="no_po" name="no_po" placeholder="No PO">
                                    </div>
                                    <div class="form-group mb-1 col-3">
                                        <label for="">Lokasi</label>
                                        <input type="text" class="form-control" id="lokasi" name="lokasi" placeholder="Lokasi">
                                    </div>
                                </div>

                                <hr class="mt-1 mb-1">
                                <div class="mb-0">
                                    <label for="">Spesifikasi</label>
                                    <div class="row">
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="merk" name="merk" placeholder="Merk">
                                        </div>
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="CPU" name="cpu" placeholder="CPU">
                                        </div>
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="os" name="os" placeholder="OS">
                                        </div>
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="Storage" name="storage" placeholder="Storage">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="RAM" name="ram" placeholder="RAM">
                                        </div>
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="GPU" name="gpu" placeholder="GPU">
                                        </div>
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="Display" name="display" placeholder="Display">
                                        </div>
                                        <div class="form-group mb-1 col-3">
                                            <input type="text" class="form-control" id="Lain-lain" name="lain" placeholder="Lain-lain ..">
                                        </div>
                                    </div>
                                </div>

                                <hr class="mb-1 mt-1">
                                <div class="mt-0 form_mokeymo">
                                    <div class="row">
                                        <label for="" class="col-2 text-right ml-4">Monitor</label>
                                        <label for="" class="col-2"></label>
                                        <label for="" class="col-2 text-right ml-2">Keyboard</label>
                                        <label for="" class="col-2"></label>
                                        <label for="" class="col-2" style="margin-left: 85px;">Mouse</label>
                                        <label for="" class="col-2"></label>
                                    </div>
                                    <div class="row">
                                        <div class="form-group mb-1 col-2">
                                            <input type="text" class="form-control bg-light" id="merk_monitor" name="merk_monitor" placeholder="Merk/type Monitor" disabled>
                                        </div>
                                        <div class="form-group mb-1 col-2">
                                            <input type="text" class="form-control bg-light" id="sn_monitor" name="sn_monitor" placeholder="SN Monitor" disabled>
                                        </div>

                                        <div class="form-group mb-1 col-2">
                                            <input type="text" class="form-control bg-light" id="merk_keyboard" name="merk_keyboard" placeholder="Merk/type Keyboard" disabled>
                                        </div>
                                        <div class="form-group mb-1 col-2">
                                            <input type="text" class="form-control bg-light" id="sn_keyboard" name="sn_keyboard" placeholder="SN Keyboard" disabled>
                                        </div>

                                        <div class="form-group mb-1 col-2">
                                            <input type="text" class="form-control bg-light" id="merk_mouse" name="merk_mouse" placeholder="Merk/type Mouse" disabled>
                                        </div>
                                        <div class="form-group mb-1 col-2">
                                            <input type="text" class="form-control bg-light" id="sn_mouse" name="sn_mouse" placeholder="SN Mouse" disabled>
                                        </div>
                                    </div>
                                    <hr class="mt-1 mb-0">
                                </div>

                                <div class="row sikon">
                                    <div class="form-group mt-2 col-4">
                                        <label for="">Tanggal Pembelian</label>
                                        <input type="date" class="form-control" id="tgl_pembelian" name="tgl_pembelian" placeholder="Tgl Pembelian">
                                    </div>
                                    <div class="form-group mt-2 col-4">
                                        <label for="">Kondisi*</label>
                                        <select name="kondisi" id="kondisi" class="form-control" required>
                                            <option value="" selected disabled>- Select kondisi - </option>
                                            <option value="0">Rusak</option>
                                            <option value="1">Baik</option>
                                            <option value="2">Pemutihan</option>
                                        </select>
                                    </div>
                                    <div class="form-group mt-2 col-4">
                                        <label for="">NO BA</label>
                                        <input type="text" class="form-control bg-light" id="no_ba" name="no_ba" placeholder="NO BA" disabled>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-3">
                                        <label for="">Harga</label>
                                        <input type="number" class="form-control" id="harga" name="harga" placeholder="Rp.">
                                    </div>
                                    <div class="form-group col-3">
                                        <label for="">Status Kondisi</label>
                                        <select name="status_kondisi" id="status_kondisi" class="form-control">
                                            <option value="" selected disabled>- Select status - </option>
                                            <option value="Baru">Baru</option>
                                            <option value="Bekas">Bekas</option>
                                            <option value="Hibah">Hibah</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-3">
                                        <label for="">Fisik</label>
                                        <select name="fisik" id="fisik" class="form-control">
                                            <option value="" selected disabled>- Select Fisik - </option>
                                            <option value="Baik">Baik</option>
                                            <option value="Setengah">Setengah</option>
                                            <option value="Tidak">Tidak</option>
                                        </select>
                                    </div>
                                    <div class="custom-control custom-checkbox mt-4 ml-2 col-1">
                                        <input type="checkbox" name="idle" class="custom-control-input" id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1">Idle?</label>
                                    </div>
                                    <!-- <div class="custom-control custom-checkbox mt-4 col-1">
                                        <input type="checkbox" name="non_aset" class="custom-control-input" id="customCheck2">
                                        <label class="custom-control-label" for="customCheck2">Non&nbsp;Aset?</label>
                                    </div> -->
                                </div>
                                <div class="row maintenance">
                                    <div class="form-group col-3">
                                        <label for="">Frekuensi Maintenance</label>
                                        <div class="row">
                                            <input type="number" name="frek_maintenan" id="frek_maintenan" class="form-control col-6 ml-2" placeholder="jumlah hari">
                                            <label class="col-5 ml-0 mt-1">Hari</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-3">
                                        <label for="">Tgl Mulai Maintenance</label>
                                        <input type="date" class="form-control" id="tgl_mulai_maintenan" name="tgl_mulai_maintenan">
                                        </input>
                                    </div>

                                    <div class="form-group col-6">
                                        <label for="">Keterangan Fisik</label>
                                        <textarea type="text" class="form-control" id="ket_fisik" name="ket_fisik" rows="3" placeholder="Ket fisik.."></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Add</button>
                                </div>
                            </form>
                        </div> <!-- end card body-->
                    </div> <!-- end card -->
                </div><!-- end col-->
            </div>
            <!-- end row-->
        </div> <!-- container -->

        <script>
            $(document).ready(function() {

                //validasi maintenance
                $("#frek_maintenan").keyup(function() {
                    $('.maintenance').find('#tgl_mulai_maintenan').attr('required', '');
                });

                $.ajax({
                    url: "<?php echo site_url('dataAssets/select_get_divisi'); ?>",
                    method: "POST",
                    data: {
                        id_pt: 1
                    },
                    async: true,
                    dataType: 'json',
                    success: function(data) {

                        var html = '';
                        var i;
                        for (i = 0; i < data.length; i++) {
                            html += '<option value=' + data[i].id_divisi + '>' + data[i].nama_divisi + '</option>';
                        }
                        $('#divisi').html(html);

                    }
                });

                $('#category').change(function() {
                    var id_qty = $(this).val();

                    $('#merk_monitor, #sn_monitor, #merk_keyboard, #sn_keyboard, #merk_mouse, #sn_mouse').val('');

                    console.log(id_qty);
                    if (id_qty == 18 || id_qty == 26) {
                        $('.form_mokeymo').find('#merk_monitor, #sn_monitor, #merk_keyboard,#sn_keyboard, #merk_mouse, #sn_mouse').removeClass('bg-light');
                        $('.form_mokeymo').find('#merk_monitor, #sn_monitor, #merk_keyboard,#sn_keyboard, #merk_mouse, #sn_mouse').removeAttr('disabled', '');
                    } else {
                        $('.form_mokeymo').find('#merk_monitor, #sn_monitor, #merk_keyboard,#sn_keyboard, #merk_mouse, #sn_mouse').addClass('bg-light');
                        $('.form_mokeymo').find('#merk_monitor, #sn_monitor, #merk_keyboard,#sn_keyboard, #merk_mouse, #sn_mouse').attr('disabled', '');
                    }

                    get_no_urut_koset();
                });

                function get_no_urut_koset() {
                    // generate kode
                    $.ajax({
                        url: "<?php echo site_url('DataAssets/get_no_urut_koset'); ?>",
                        method: "POST",
                        data: {

                        },
                        async: true,
                        dataType: 'json',
                        success: function(data) {
                            generate_koset(data);
                        },
                        error: function(response) {
                            alert('KONEKSI TERPUTUS!');
                        }
                    });

                }

                function generate_koset(data) {
                    console.log(data);
                    // MSAL/2112/A/SITE/LP/0001

                    var category = $('#category option:selected').text();

                    if (category == 'LAPTOP') {
                        ctgry = 'LPT';
                    } else if (category == 'PC') {
                        ctgry = 'KPT';
                    } else if (category == 'PRINTER') {
                        ctgry = 'PNT';
                    } else if (category == 'GADGET') {
                        ctgry = 'GDG';
                    } else if (category == 'UPS') {
                        ctgry = 'UPS';
                    } else if (category == 'SCANER') {
                        ctgry = 'SNR';
                    } else if (category == 'PROYEKTOR') {
                        ctgry = 'PYT';
                    } else if (category == 'SPAREPART') {
                        ctgry = 'SRP';
                    } else if (category == 'CCTV') {
                        ctgry = 'CTV';
                    } else if (category == 'VCLOUDPOINT') {
                        ctgry = 'VDP';
                    } else if (category == 'DRONE') {
                        ctgry = 'DRN';
                    } else if (category == 'FO') {
                        ctgry = 'FBO';
                    } else if (category == 'NETWORKING') {
                        ctgry = 'NWK';
                    } else if (category == 'SERVER') {
                        ctgry = 'SRV';
                    } else if (category == 'VOIP') {
                        ctgry = 'VIP';
                    } else if (category == 'PERALATAN') {
                        ctgry = 'PAT';
                    } else if (category == 'FINGERPRINT') {
                        ctgry = 'FRP';
                    } else if (category == 'TOOLKIT') {
                        ctgry = 'TLK';
                    } else {
                        ctgry = category;
                    }

                    var kode_assets = 'ASSET' + '/' + data.thn + data.bln + '/' + 'A' + '/' + 'HO' + '/' + ctgry;

                    $('#kode_asset').val(kode_assets);
                }


                $('#kondisi').change(function() {
                    var kondisi = $(this).val();

                    $('#no_ba').val('');

                    if (kondisi == 0 || kondisi == 2) {
                        $('.sikon').find('#no_ba').removeClass('bg-light');
                        $('.sikon').find('#no_ba').removeAttr('disabled', '');
                    } else {
                        $('.sikon').find('#no_ba').addClass('bg-light');
                        $('.sikon').find('#no_ba').attr('disabled', '');
                    }
                });
            });
        </script>