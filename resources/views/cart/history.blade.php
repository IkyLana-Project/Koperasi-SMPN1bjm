@extends('layouts.main')

@section('container')

    <div class="bg-white w-full h-max lg:rounded-xl shadow-sm p-4 lg:p-8">
        
        <div class="w-full gap-3 flex flex-row">
            <h5 class="text-xl font-medium w-full">Histori Pembelian</h5>
            <div class="container w-100">
                <form class="grid justify-items-end mr-1" action="/filter" method="GET">
                    <div class="pb-3 flex flex-row-reverse">
                        <div class="ml-5 p-2 border border-green-600" style="border-radius: 15px; color:white;">
                            <label class="text-green-600"> Akhir Tanggal: </label>
                            <input type="date" name="end_date" style="color: black;">
                        </div>
                        <div class="p-2 border border-green-600" style="border-radius: 15px; ">
                            <label class="text-green-600"> Mulai Tanggal: </label>
                            <input type="date" name="start_date" >
                        </div>
                    </div>
                    <div class="flex space-x-4">
                        <div class="p-2 bg-blue-500 hover:bg-blue-600  text-white font-semibold text-center w-36" style="font-size: 16px; border-radius: 15px;">
                            <button type="submit" class="text"><i class="fa-solid fa-filter pt-2"></i> Filter</button>
                        </div>
                    </div>
                    </form>
                </div>
        </div>
        <div class="flex justify-start mt-1">
            <h2 class="text-green-600 text-lg font-semibold">Halaman: {{ $notes->currentPage()}}</h2>
        </div>
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200 mt-5 shadow-lg rounded-lg">
                <thead class="bg-green-500 text-white">
                    <tr class="text-center">
                        <th class="px-6 py-3 text-xs font-medium uppercase tracking-wider">Nama Pembeli</th>
                        <th class="px-6 py-3 text-xs font-medium uppercase tracking-wider">Nama Barang</th>
                        <th class="px-6 py-3 text-xs font-medium uppercase tracking-wider">Harga Satuan</th>
                        <th class="px-6 py-3 text-xs font-medium uppercase tracking-wider">Total Harga</th>
                        <th class="px-6 py-3 text-xs font-medium uppercase tracking-wider">Tanggal Pembelian</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    @foreach ($notes as $item)
                    <tr class="text-center hover:bg-gray-100">
                        <td class="px-6 py-4 whitespace-nowrap">{{ $item['nama'] }}</td>
                        <td class="px-6 py-4 whitespace-nowrap">{{ $item['barang_satuan'] }}</td>
                        <td class="px-6 py-4 whitespace-nowrap">{{ $item['total_harga'] }}</td>
                        <td class="px-6 py-4 whitespace-nowrap">@currency ($item->total_harga_keseluruhan )</td>
                        <td class="px-6 py-4 whitespace-nowrap">{{ $item['updated_at'] }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>        
        <div class="flex justify-end mt-4">
            {{ $notes->links()}}
        </div>
    </div>
    
@endsection
