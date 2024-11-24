<x-layout>
    <x-slot name="title">
        <title>User Profile</title>
    </x-slot>
    @if(session('success'))
    <div class="alert alert-success" role="alert">
       {{session('success')}}
    </div>
    @endif
    <div class="d-flex justify-content-center align-items-center" style="height:92vh">
        <div class="d-flex flex-column userEditDiv">
            <h1 class="text-center mb-4">Edit Profile</h1>
            <form action="{{ route('profile.update') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="d-flex flex-column align-items-center mb-2">
                    <img class="editImg" src={{ auth()->user()->image }} alt="">
                    <!-- <div class="d-flex justify-content-between align-items-center my-3">
                        <label for="image" style="color:blue;font-weight:bold;">Change Photo</label>
                        <input type="file" class="form-control form-control-sm" style="width:70%;" name="image" id="image" />
                    </div> -->
                    </div>
                <div class="d-flex flex-column mb-4">
                    <span style="font-weight:bold; margin-bottom:5px;">User Name</span>
                    <input class="form-control" type="text" name="name" id="name" value="{{ auth()->user()->name }}" />
                </div>
                <div class="d-flex flex-column mb-4">
                    <span style="font-weight:bold; margin-bottom:5px;">Email</span>
                    <input class="form-control" type="text" name="email" id="email"/>
                </div>
                <div class="text-end mt-5">
                    <a href="/interview_test/public/home" class="btn btn-outline-danger cancelBtn me-3">Cancel</a>
                    <button type="submit" class="btn btn-outline-success" name="saveBtn">Save</button>
                </div>
            </form>
        </div>
    </div>
</x-layout>
