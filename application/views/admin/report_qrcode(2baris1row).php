<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Data Assets</title>
    <style>
        .title {
            text-align: center;
        }
        
    </style>
</head><body>

<p class="title"><b>REPORT DATA ASSETS QR-CODE</b></p>
<div>
    <?php foreach ($data_assets as $d) : ?>
        <table>
            <head>
                <tr>
                    <th style="width: 30px;">QR</th>
                    <th>DESC</th>
                </tr>
            </head>
            <body>
                <tr>
                    <td><img style="width: 200px;" src="./assets/qrcode/data_asset/<?= $d['id_assets']; ?>.png"></td>
                    <td><?= $d['category'] ?> <br> <?= $d['kode_assets'] ?></td>
                    <br>
                </tr>
            </body>
        </table>
    <?php endforeach; ?>

    <?php foreach ($data_assets as $d) : ?>
        <table>
            <head>
                <tr>
                    <th style="width: 30px;">QR</th>
                    <th>DESC</th>
                </tr>
            </head>
            <body>
                <tr>
                    <td><img style="width: 200px;" src="./assets/qrcode/data_asset/<?= $d['id_assets']; ?>.png"></td>
                    <td><?= $d['category'] ?> <br> <?= $d['kode_assets'] ?></td>
                    <br>
                </tr>
            </body>
                </table>
    <?php endforeach; ?>
</div>
    <!-- <table border="1"> -->
    <!-- <head>
        <tr>
                </tr>
        </head>
        <body>
            <tr>
                <td style="padding: 20px;">
                    
                </td>
            </tr>
        </body> -->
    <!-- </table> -->

</body></html>