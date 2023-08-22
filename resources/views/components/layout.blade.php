<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" href="images/favicon.ico" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
            integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        />
        <script src="//unpkg.com/alpinejs" defer></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <script>
            tailwind.config = {
                theme: {
                    extend: {
                        colors: {
                            laravel: "#736562",
                        },
                        fontSize: {
                            'xs': '14px', // Define your custom text size class here
                        },
                    },
                },
            };
        </script>
        <title>JobHub | Find Jobs</title>
    </head>
    <body class="">
        <nav class="flex justify-between items-center mb-4">
            <a href="/"
                ><img class="m-4 h-10" src="{{asset('images/logo.jpg')}}" alt="" class="logo"
            /></a>
            <ul class="flex space-x-6 mr-6 text-lg">
                @auth
                <li>
                    <a href="/listings/manage" class="hover:text-laravel"
                        ><i class="fa-solid fa-gear"></i>
                        Manage Listings</a
                    >
                </li>
                <li>
                    <form class="inline" method="POST" action="/logout">
                        @csrf
                        <button type="submit" class="hover:text-laravel">
                            <i class="fa-solid fa-sign-out"></i> Logout
                        </button>
                    </form>
                </li>
                @else
                <li class="">
                    <a href="/register" class="hover:text-laravel "
                        ><i class="fa-solid fa-user-plus"></i> Register</a
                    >
                </li>
                <li class="">
                    <a href="/login" class="hover:text-laravel"
                        >
                        {{-- make when screen small to display none the icon --}}

                        <i class="fa-solid fa-arrow-right-to-bracket"></i>
                        Login</a
                    >
                </li>
                @endauth
            </ul>
        </nav>

        <main class="min-h-screen">
            {{$slot}}

        </main>
        <footer
        class="relative bottom-0 left-0 w-full flex items-center justify-start font-bold bg-laravel text-white h-24 mt-12 opacity-90 md:justify-center"
    >
        <p class="ml-2">Copyright &copy; 2022, All Rights reserved</p>

        <a
            href="/listings/create"
            class="absolute top-1/3 right-10 bg-black text-white py-2 px-5"
            >Post Job</a
        >
    </footer>
    <x-flash-message />
</body>
</html>
