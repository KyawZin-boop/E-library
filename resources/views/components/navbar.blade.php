<nav class="navbar sticky-top navbar-expand-lg killua" style="background-color: #e3f2fd">
    <div class="container-fluid">
        <a class="navbar-brand ms-lg-2 logo" href="#">E-Library</a>
        <div class="d-flex">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item mx-xl-5">
                    <a class="nav-link" aria-current="page" href="/interview_test/public/home">Home</a>
                </li>
                <li class="nav-item mx-xl-3">
                    <a class="nav-link" href="/interview_test/public/allbooks">All Books</a>
                </li>
                <li class="nav-item ms-xl-5">
                    <a class="nav-link" href="/interview_test/public/aboutUs">About</a>
                </li>
            </ul>
           <form action="/interview_test/public/search">
            <div class="d-flex">
                    <input class="form-control me-2 searchInput" name="search" style="min-width: 200px; max-width: 400px" type="text" placeholder="Type a book name or a author name..." aria-label="Search" />
                    <button type="submit" class="btn btn-outline-info me-xl-4 searchBtn">
                        Search
                    </button>
                </div>
           </form>
            @guest
            <div class="ms-xl-5 userLoginDiv">
                <a href="./login" class="ms-lg-5 btn btn-outline-success login" >
                    <i class="fa-solid fa-user me-2"></i>Login
                </a>
                <a href="./register" class="btn btn-outline-danger register">
                    <i class="fa-solid fa-user-plus me-2"></i>Register
                </a>
            </div>
            @else
            <div class="userInfo">
                <div class="userPhoto btn-group">
                    <button class="userDropdownBtn" type="button" data-bs-toggle="dropdown" aria-expanded="false" >
                        <img src="{{auth()->user()->image}}" class="userImg" />
                        <span class="me-3">{{auth()->user()->name}}</span>
                    </button>
                    <ul class="dropdown-menu user-menu">
                        <li><a class="dropdown-item" href="/interview_test/public/userProfile">Manage profile</a></li>
                        <li><a class="dropdown-item signOutBtn" href="/interview_test/public/logout"><i class="fa-solid fa-right-from-bracket me-2"></i>Sign Out</a></li>
                    </ul>
                </div>
                <div class="me-3">
                    <a href="/interview_test/public/myCart" class="btn btn-link">
                        <i class="fa-solid fa-cart-arrow-down text-primary fs-5 position-relative">
                            <span class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger">
                                {{Cart::content()->count()}}<span class="visually-hidden">unread messages</span>
                            </span>
                        </i>
                    </a>
                </div>
            </div>
            @endguest
        </div>
    </div>
</nav>

<!-- Lorem ipsum dolor, sit amet consectetur adipisicing elit.
Repudiandae quisquam error maxime necessitatibus? Obcaecati
vitae earum quod cum aliquid autem? Ut fugiat animi minus
maxime quibusdam recusandae sint dolorum sequi. -->
