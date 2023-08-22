<section class="relative h-72 bg-laravel flex flex-col justify-center align-center text-center space-y-4 mb-4">
    <div
        class="absolute top-0 left-0 w-full h-full opacity-1 bg-no-repeat bg-center"
        style="background-image: url('images/laravel-logo.jpg')"
    ></div>

    <div class="z-10">
        <h1 class="text-6xl font-bold uppercase text-white">
            {{-- Lara<span class="text-black">Job</span> --}}

        </h1>
        <p class="text-2xl text-gray-200 font-bold my-4 mb-24">
            Find or post jobs
        </p>
        <div>
            @auth
            <a
                href="/listings/create"
                class="inline-block border-2 border-white text-white py-2 px-4 rounded-xl uppercase hover:text-black hover:border-black"
                >
                Welcome {{auth()->user()->name}}
                ,Post a Job</a
            >
            @else
            <a
                href="/login"
                class="inline-block border-2 border-white text-white py-2 px-4 rounded-xl uppercase hover:text-black hover:border-black"
                >Login to Post a Job</a
            >
            @endauth
        </div>
    </div>
</section>
