<!doctype html>
<!--
* Tabler - Premium and Open Source dashboard template with responsive and high quality UI.
* @version 1.0.0-beta19
* @link https://tabler.io
* Copyright 2018-2023 The Tabler Authors
* Copyright 2018-2023 codecalm.net Paweł Kuna
* Licensed under MIT (https://github.com/tabler/tabler/blob/master/LICENSE)
-->
<html lang="en">
<head>
    @include('layouts.admin.content.head')
    @vite('resources/js/app.js')
</head>
<body data-bs-theme="dark">
    <div id="app">
        <div class="page">
            <!-- Navbar -->
            @include('layouts.admin.content.header')
            @include('layouts.admin.content.menu')
            <div class="page-wrapper">
                <div>
                    <router-view />
                </div>
                @include('layouts.admin.content.footer')
            </div>
        </div>
    </div>
    @include('layouts.admin.content.script')
    @vite('resources/js/app.js')
</body>
</html>
