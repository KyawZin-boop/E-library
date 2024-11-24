<x-layout>
    <x-slot name="title">
        <title>Home</title>
    </x-slot>
    <div class="searchBooks d-none ms-xl-5"></div>
        <div class="allbooksContainer">
        <div id="carouselExampleCaptions" class="carousel slide carouselContainer killua" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
            <img src={{ asset('Caurocel_Img/cimg1.jpeg') }} class="d-block w-100 carouselImg" alt="..." />
            <div class="carousel-caption d-none d-md-block">
                <p>
                The <span style="color:greenyellow">world</span> belongs to
                those who read.
                </p>
            </div>
            </div>
            <div class="carousel-item">
            <img src={{ asset('Caurocel_Img/cimg2.jpeg') }} class="d-block w-100 carouselImg" alt="..." />
            <div class="carousel-caption d-none d-md-block">
                <p>
                Today a Reader, tomorrow a
                <span style="color: blue">Leader.</span>
                </p>
            </div>
            </div>
            <div class="carousel-item">
            <img src={{ asset('Caurocel_Img/cimg3.jpeg') }} class="d-block w-100 carouselImg" alt="..." />
            <div class="carousel-caption d-none d-md-block">
                <p>
                A reader lives a thousand
                <span style="color: gold">lives</span> before he dies.
                </p>
            </div>
            </div>
            <div class="carousel-item">
            <img src={{ asset('Caurocel_Img/cimg4.jpeg') }} class="d-block w-100 carouselImg" alt="..." />
            <div class="carousel-caption d-none d-md-block">
                <p>F<span style="color: red">READ</span>OM</p>
            </div>
            </div>
            <div class="carousel-item">
            <img src={{ asset('Caurocel_Img/cimg5.jpeg') }} class="d-block w-100 carouselImg" alt="..." />
            <div class="carousel-caption d-none d-md-block">
                <p>
                A room without books is like a body
                <span style="color: black">without</span> a soul.
                </p>
            </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
        </div>

        <div class="container text-center">
        <div class="latestBooksTitle pb-2 mb-4">Latest Books</div>
        <div class="row mb-4">
            <div class="card-group latestBooks wow fadeInUp">
            @foreach ($latestBooks as $latestBook)
                <div class="lbBorder col-12 col-sm-4 col-md-3 col-xl-2 wow bounceInUp">
                    <div class="cImg">
                    <img src={{$latestBook->image}} class="latestBooksImg" />
                    <div class="card-body">
                        <h6 class="my-2 mt-4">{{$latestBook->title}}</h6>
                        <span>By- </span><a href="" class="author">{{$latestBook->author}}</a>
                    </div>
                    </div>
                </div>
            @endforeach
            </div>
        </div>
        <div class="card-footer">
            <a class="btn btn-outline-info" href="/interview_test/public/allbooks" style="width: 200px">
            See More
            </a>
        </div>
        <div class="endline"></div>
        </div>

        <div class="container text-center">
        <div class="popularBooksTitle pb-2 mb-4">Popular Books</div>
        <div class="row mb-4">
            <div class="card-group popularBooks">
            @foreach ($popularBooks as $popularBook)
                <div class="pbBorder col-12 col-sm-4 col-md-3 col-xl-2 wow bounceInUp">
                    <div class="cImg">
                    <img src={{$popularBook->image}} class="popularBooksImg" />
                    <div class="card-body">
                        <h6 class="my-2 mt-4">{{$popularBook->title}}</h6>
                        <span>By- </span><a href="" class="author">{{$popularBook->author}}</a>
                    </div>
                    </div>
                </div>
            @endforeach
            </div>
        <div class="card-footer">
            <a class="btn btn-outline-info" href="/interview_test/public/allbooks" style="width: 200px">
            See More
            </a>
        </div>
        <div class="endline"></div>
        </div>
    </div>
</x-layout>
