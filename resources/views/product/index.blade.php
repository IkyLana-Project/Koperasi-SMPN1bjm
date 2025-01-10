@extends('layouts.main')

@section('container')
    <div class="bg-white w-full h-max lg:rounded-xl shadow-sm p-4 lg:p-8">
        <h5 class="text-xl font-medium">Produk Koperasi</h5>
        <div class="w-full gap-3 flex flex-row">
            <form action="" class="w-1/2 mt-4 flex flex-row">
                <input type="text" id="barang" name="barang" placeholder="Cari Barang..." class="w-full border px-3 py-2 border-green-600 rounded-l-lg outline-none placeholder:text-green-600">
                <button class="bg-green-600 rounded-r-lg px-3 py-2 text-white hover:bg-green-500 hover:duration-150"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
            <form action="" class="w-1/2 mt-4 flex flex-row">
                <select id="type" name="type" class="w-full border px-3 py-2 border-green-600 rounded-l-lg outline-none placeholder:text-green-600">
                    <option value="">Semua</option>
                    @foreach ($types as $type)
                    <option value="{{ $type->type }}">{{ $type->type }}</option>
                    @endforeach
                </select>
                <button class="bg-green-600 rounded-r-lg px-3 py-2 text-white hover:bg-green-500 hover:duration-150"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
        </div>
        @if(session('cartSuccess'))
            <p class="text-green-500 mt-5 font-bold">{{ session('cartSuccess') }}</p>
        @endif
        <div class="mt-8 grid grid-cols-2 lg:grid-cols-4 xl:grid-cols-6 gap-6">
            @foreach ($products as $product)
            <div class="bg-white border-green-600 w-full h-max p-3 border rounded-lg shadow-md">
                <div class="flex justify-center">
                    <img src="{{ asset('storage/'.$product->gambar) }}" alt="{{ $product->barang }}" class="w-32 h-32 object-cover">
                </div>
                <div class="flex flex-row justify-between w-full">
                    <div class="flex flex-col mt-2 w-28">
                        <div>
                            <p class="font-medium w-36">{{ $product->barang }}</p>
                            <p class="w-36">@currency($product->harga)</p>
                            <p class="text-slate-400 text-sm">Stok: {{ $product->stok }}</p>
                        </div>
                    </div>
                    <div class="flex flex-col justify-end">
                        <form action="/cart" method="post">
                            @if ( $product->stok < 1)
                                <b class=" text-red-500 px-3 rounded-lg bg-red-100 text-center p-1 -ml-16">Habis</b>
                            @endif
                            @if ( $product->stok >= 1 )
                                @csrf
                                @method('post')
                                <input type="hidden" name="product_id" value="{{ $product->id }}">
                                <button href="/carts">🛒</button>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
@endsection
