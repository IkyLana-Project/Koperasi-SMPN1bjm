<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ $title }}</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  @vite('resources/css/app.css')
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  {{-- <link rel="stylesheet" href="{{ asset('build/assets/app-CiQlHYby.css') }}"> --}}
</head>
<body class="bg-slate-100">
  <div id="overlay" class="fixed inset-0 bg-black opacity-50 hidden"></div>
  @include('partials.navbar')
  @include('partials.sidebar')
  <div class="w-full h-auto lg:px-20 lg:py-10">
    @yield('container')
  </div>

    @include('partials.footer')
    <script>
      // Get the current date
      var currentDate = new Date().toISOString().split('T')[0];
      
      // Set the current date as the value of the end date input field
      document.getElementsByName("end_date")[0].value = currentDate;

      document.querySelector('form').addEventListener('submit', function(e) {
      let startDate = document.querySelector('input[name="start_date"]').value;
      let endDate = document.querySelector('input[name="end_date"]').value;

      if (!startDate || !endDate) {
          e.preventDefault(); // Menghentikan pengiriman form

          // Menampilkan notifikasi menggunakan SweetAlert
          Swal.fire({
              icon: 'warning',
              title: 'Input Tidak Lengkap',
              text: 'Harap isi kedua tanggal (Mulai dan Akhir)!',
          });
      }
      });

    </script>
  
   <script src="{{ asset('build/assets/app-D2jpX1vH.js') }}"></script>
   <script src="{{ asset('js/sidebar.js') }}"></script>
   <script src="{{ asset('js/cart.js') }}"></script>
</body>
</html>
