<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Histori Pembelian</h1>
    <hr>
    
    <table class="table table-hover text-nowrap" style="width: 100%;" border="1">
        <thead>
            <tr class="text-center">
                <th>Nama Pembeli</th>
                <th>Nama Barang</th>
                <th>Harga Satuan</th>
                <th>Total Harga</th>
                <th>Tanggal Pembelian</th>
            </tr>
        </thead>
        @php
        $totalKeseluruhan = 0;
        @endphp

        <tbody>
            @foreach ($notes as $item)
            @php
                $totalKeseluruhan += $item['total_harga_keseluruhan'];
            @endphp
            <tr class="text-center">
                <td class="px-6 py-4 whitespace-nowrap">{{ $item['nama'] }}</td>
                <td class="px-6 py-4 whitespace-nowrap">{{ $item['barang_satuan'] }}</td>
                <td class="px-6 py-4 whitespace-nowrap">{{ $item['total_harga'] }}</td>
                <td class="px-6 py-4 whitespace-nowrap">@currency ($item->total_harga_keseluruhan )</td>
                <td class="px-6 py-4 whitespace-nowrap">{{ $item['updated_at'] }}</td>
            </tr>
            @endforeach
        </tbody>

        <thead>
            <tr class="text-center">
                <th colspan="5">Total Harga Keseluruhan: @currency($totalKeseluruhan)</th>
            </tr>
        </thead>

    </table>
</body>
</html>