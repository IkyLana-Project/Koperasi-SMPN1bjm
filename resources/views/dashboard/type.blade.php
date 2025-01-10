@extends('layouts.main')

@section('container')
    <div class="w-full h-max bg-white p-4 lg:rounded-lg">
        <h6 class="text-xl font-medium">Tambahkan Kategori</h6>
        @if (session('success'))
            <p class="text-blue-600">{{ session('success') }}</p>
        @endif
        <form action="" method="post" class="flex flex-col gap-4 mt-6" enctype="multipart/form-data">
            @method('post')
            @csrf
            <div class="flex flex-col">
                <input type="text" id="type" name="type" placeholder="Masukkan Nama Kategori..."
                    class="w-full border px-3 py-2 rounded-lg outline-none focus:border-green-600">
            </div>
            <div class="flex justify-between">
                <div>
                    <button class="bg-green-500 hover:bg-green-400 hover:duration-150 text-white rounded-lg px-3 py-2 m-3"><a href="/dashboard" class="{{ $active == 'dashboard' ? 'text-green' : '' }}"><i class="fa-solid fa-arrow-left"></i> Kembali</a></button>
                </div>
                <div>
                    <button type="submit" class="bg-blue-500 hover:bg-blue-400 hover:duration-150 text-white rounded-lg px-3 py-2 m-3">Simpan</button>
                </div>
            </div>
        </form>
    </div>
    <div class="w-full h-max bg-white p-4 lg:rounded-lg">
        <div class="overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50  dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            Nama Kategori Produk
                        </th>
                        <th scope="col" class="px-6 py-3">
                            <span class="sr-only"></span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($types as $type)                        
                    <tr
                        class="bg-white border-b hover:bg-gray-50 ">
                        <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                            {{ $type->type }}
                        </th>
                        <td class="px-6 py-4 text-right" >
                            <form action="/types/{{ $type->id }}" method="post">
                                @method('delete')
                                @csrf
                                <button type="submit" class="font-medium text-red-500 hover:underline" onclick="return confirm('yakin mau hapus data ini?')">Hapus</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
