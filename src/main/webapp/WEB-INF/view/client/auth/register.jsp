<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link rel="apple-touch-icon" sizes="76x76" href="/auth/img/apple-icon.png" />
            <link rel="icon" type="image/png" href="/auth/img/favicon.png" />
            <title>Shoeshop</title>
            <!--     Fonts and icons     -->
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
            <!-- Font Awesome Icons -->
            <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
            <!-- Nucleo Icons -->
            <link href="/auth/css/nucleo-icons.css" rel="stylesheet" />
            <link href="/auth/css/nucleo-svg.css" rel="stylesheet" />
            <!-- Main Styling -->
            <link href="/auth/css/argon-dashboard-tailwind.css?v=1.0.1" rel="stylesheet" />
        </head>

        <body
            class="m-0 font-sans antialiased font-normal bg-white text-start text-base leading-default text-slate-500">
            <!-- Navbar -->
            <nav
                class="absolute top-0 z-30 flex flex-wrap items-center justify-between w-full px-4 py-2 mt-6 mb-4 shadow-none lg:flex-nowrap lg:justify-start">
                <div class="container flex items-center justify-between py-0 flex-wrap-inherit">
                    <a class="py-1.75 ml-4 mr-4 font-bold text-white text-sm whitespace-nowrap lg:ml-0" href="/"
                        target="_blank">
                        Shoeshop </a>
                    <button navbar-trigger
                        class="px-3 py-1 ml-2 leading-none transition-all ease-in-out bg-transparent border border-transparent border-solid rounded-lg shadow-none cursor-pointer text-lg lg:hidden"
                        type="button" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="inline-block mt-2 align-middle bg-center bg-no-repeat bg-cover w-6 h-6 bg-none">
                            <span bar1
                                class="w-5.5 rounded-xs duration-350 relative my-0 mx-auto block h-px bg-white transition-all"></span>
                            <span bar2
                                class="w-5.5 rounded-xs mt-1.75 duration-350 relative my-0 mx-auto block h-px bg-white transition-all"></span>
                            <span bar3
                                class="w-5.5 rounded-xs mt-1.75 duration-350 relative my-0 mx-auto block h-px bg-white transition-all"></span>
                        </span>
                    </button>
                    <div navbar-menu
                        class="items-center flex-grow transition-all ease duration-350 lg-max:bg-white lg-max:max-h-0 lg-max:overflow-hidden basis-full rounded-2xl lg:flex lg:basis-auto">
                        <ul class="flex flex-col pl-0 mx-auto mb-0 list-none lg-max:py-2 lg:flex-row xl:ml-auto">
                            <li>
                                <a class="flex items-center px-4 py-2 mr-2 font-normal text-white transition-all ease-in-out duration-250 lg-max:opacity-0 lg-max:text-slate-700 text-sm lg:px-2 lg:hover:text-white/75"
                                    aria-current="page" href="/">
                                    <i class="mr-1 text-white lg-max:text-slate-700 fa fa-chart-pie opacity-60"></i>
                                    HomePage
                                </a>
                            </li>
                            <li>
                                <a class="block px-4 py-2 mr-2 font-normal text-white transition-all ease-in-out duration-250 lg-max:opacity-0 lg-max:text-slate-700 text-sm lg:px-2 lg:hover:text-white/75"
                                    href="/product">
                                    <i class="mr-1 text-white lg-max:text-slate-700 fa fa-user opacity-60"></i>
                                    Product
                                </a>
                            </li>
                            <li>
                                <a class="block px-4 py-2 mr-2 font-normal text-white transition-all ease-in-out duration-250 lg-max:opacity-0 lg-max:text-slate-700 text-sm lg:px-2 lg:hover:text-white/75"
                                    href="/register">
                                    <i class="mr-1 text-white lg-max:text-slate-700 fas fa-user-circle opacity-60"></i>
                                    Sign Up
                                </a>
                            </li>
                            <li>
                                <a class="block px-4 py-2 mr-2 font-normal text-white transition-all ease-in-out duration-250 lg-max:opacity-0 lg-max:text-slate-700 text-sm lg:px-2 lg:hover:text-white/75"
                                    href="/login">
                                    <i class="mr-1 text-white lg-max:text-slate-700 fas fa-key opacity-60"></i>
                                    Sign In
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a class="py-1.75 ml-4 mr-4 font-bold text-white text-sm whitespace-nowrap lg:ml-0" href="about"
                        target="_blank">
                        About </a>
                </div>
            </nav>

            <main class="mt-0 transition-all duration-200 ease-in-out">
                <section class="min-h-screen">
                    <div
                        class="bg-top relative flex items-start pt-12 pb-56 m-4 overflow-hidden bg-cover min-h-50-screen rounded-xl bg-[url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/signup-cover.jpg')]">
                        <span
                            class="absolute top-0 left-0 w-full h-full bg-center bg-cover bg-gradient-to-tl from-zinc-800 to-zinc-700 opacity-60"></span>
                        <div class="container z-10">
                            <div class="flex flex-wrap justify-center -mx-3">
                                <div
                                    class="w-full max-w-full px-3 mx-auto mt-0 text-center lg:flex-0 shrink-0 lg:w-5/12">
                                    <h1 class="mt-12 mb-2 text-white">Welcome!</h1>
                                    <!-- <p class="text-white">Use these awesome forms to login or create new account in your project for free.</p> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="flex flex-wrap -mx-3 -mt-48 md:-mt-56 lg:-mt-48">
                            <div
                                class="w-full max-w-full px-3 mx-auto mt-0 md:flex-0 shrink-0 md:w-7/12 lg:w-5/12 xl:w-4/12">
                                <div
                                    class="relative z-0 flex flex-col min-w-0 break-words bg-white border-0 shadow-xl rounded-2xl bg-clip-border">
                                    <div class="p-6 mb-0 text-center bg-white border-b-0 rounded-t-2xl">
                                        <h5>Register</h5>
                                    </div>
                                    <div class="flex-auto p-6">
                                        <form:form action="/register" method="POST" modelAttribute="newUser"
                                            role="form text-left">
                                            <c:set var="confirmPasswordError">
                                                <form:errors path="confirmPassword" />
                                            </c:set>
                                            <c:set var="nameError">
                                                <form:errors path="name" />
                                            </c:set>
                                            <c:set var="passwordError">
                                                <form:errors path="password" />
                                            </c:set>
                                            <c:set var="emailError">
                                                <form:errors path="email" />
                                            </c:set>
                                            <div class="mb-4">
                                                <form:input path="name" type="text"
                                                    class="placeholder:text-gray-500 text-sm focus:shadow-primary-outline leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-blue-500 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow ${not empty nameError? 'is-invalid':''}"
                                                    placeholder="Name" aria-label="Name"
                                                    aria-describedby="email-addon" />
                                                <form:errors path="name" cssClass="invalid-feedback" />

                                            </div>
                                            <div class="mb-4">
                                                <form:input path="email" type="email"
                                                    class="placeholder:text-gray-500 text-sm focus:shadow-primary-outline leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-blue-500 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow ${not empty emailError? 'is-invalid':''}"
                                                    placeholder="Email" aria-label="Email"
                                                    aria-describedby="email-addon" />
                                                <form:errors path="email" cssClass="invalid-feedback" />
                                            </div>
                                            <div class="mb-4">
                                                <form:input path="password" type="password"
                                                    class="placeholder:text-gray-500 text-sm focus:shadow-primary-outline leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-blue-500 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow ${not empty passwordError? 'is-invalid':''}"
                                                    placeholder="Password" aria-label="Password"
                                                    aria-describedby="password-addon" />
                                                <form:errors path="password" cssClass="invalid-feedback" />
                                            </div>
                                            <div class="mb-4">
                                                <form:input path="confirmPassword" type="password"
                                                    class="placeholder:text-gray-500 text-sm focus:shadow-primary-outline leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-blue-500 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow ${not empty confirmPasswordError? 'is-invalid':''}"
                                                    placeholder="Confirm Password" aria-label="Confirm Password"
                                                    aria-describedby="password-addon" />
                                                <form:errors path="confirmPassword" cssClass="invalid-feedback" />
                                            </div>
                                            <div class="min-h-6 pl-7 mb-0.5 block">
                                                <input
                                                    class="w-4.8 h-4.8 ease -ml-7 rounded-1.4 checked:bg-gradient-to-tl checked:from-blue-500 checked:to-violet-500 after:text-xxs after:font-awesome after:duration-250 after:ease-in-out duration-250 relative float-left mt-1 cursor-pointer appearance-none border border-solid border-slate-200 bg-white bg-contain bg-center bg-no-repeat align-top transition-all after:absolute after:flex after:h-full after:w-full after:items-center after:justify-center after:text-white after:opacity-0 after:transition-all after:content-['\f00c'] checked:border-0 checked:border-transparent checked:bg-transparent checked:after:opacity-100"
                                                    type="checkbox" value="" checked />
                                                <label
                                                    class="mb-2 ml-1 font-normal cursor-pointer text-sm text-slate-700"
                                                    for="flexCheckDefault"> I
                                                    agree the <a href="javascript:;"
                                                        class="font-bold text-slate-700">Terms
                                                        and
                                                        Conditions</a>
                                                </label>
                                            </div>
                                            <div class="text-center">
                                                <button type="submit"
                                                    class="inline-block w-full px-5 py-2.5 mt-6 mb-2 font-bold text-center text-white align-middle transition-all bg-transparent border-0 rounded-lg cursor-pointer active:opacity-85 hover:-translate-y-px hover:shadow-xs leading-normal text-sm ease-in tracking-tight-rem shadow-md bg-150 bg-x-25 bg-gradient-to-tl from-zinc-800 to-zinc-700 hover:border-slate-700 hover:bg-slate-700 hover:text-white">Sign
                                                    up</button>
                                            </div>
                                            <p class="mt-4 mb-0 leading-normal text-sm">Already have an account? <a
                                                    href="/login" class="font-bold text-slate-700">Sign in</a>
                                            </p>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- -------- START FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
                <footer class="py-12">
                    <div class="container">
                        <div class="flex flex-wrap -mx-3">
                            <div class="flex-shrink-0 w-full max-w-full mx-auto mb-6 text-center lg:flex-0 lg:w-8/12">
                                <a href="javascript:;" target="_blank"
                                    class="mb-2 mr-4 text-slate-400 sm:mb-0 xl:mr-12">
                                    Company </a>
                                <a href="javascript:;" target="_blank"
                                    class="mb-2 mr-4 text-slate-400 sm:mb-0 xl:mr-12">
                                    About
                                    Us </a>
                                <a href="javascript:;" target="_blank"
                                    class="mb-2 mr-4 text-slate-400 sm:mb-0 xl:mr-12">
                                    Team
                                </a>
                                <a href="javascript:;" target="_blank"
                                    class="mb-2 mr-4 text-slate-400 sm:mb-0 xl:mr-12">
                                    Products </a>
                                <a href="javascript:;" target="_blank"
                                    class="mb-2 mr-4 text-slate-400 sm:mb-0 xl:mr-12">
                                    Blog
                                </a>
                                <a href="javascript:;" target="_blank"
                                    class="mb-2 mr-4 text-slate-400 sm:mb-0 xl:mr-12">
                                    Pricing </a>
                            </div>
                            <div
                                class="flex-shrink-0 w-full max-w-full mx-auto mt-2 mb-6 text-center lg:flex-0 lg:w-8/12">
                                <a href="javascript:;" target="_blank" class="mr-6 text-slate-400">
                                    <span class="text-lg fab fa-dribbble"></span>
                                </a>
                                <a href="javascript:;" target="_blank" class="mr-6 text-slate-400">
                                    <span class="text-lg fab fa-twitter"></span>
                                </a>
                                <a href="javascript:;" target="_blank" class="mr-6 text-slate-400">
                                    <span class="text-lg fab fa-instagram"></span>
                                </a>
                                <a href="javascript:;" target="_blank" class="mr-6 text-slate-400">
                                    <span class="text-lg fab fa-pinterest"></span>
                                </a>
                                <a href="javascript:;" target="_blank" class="mr-6 text-slate-400">
                                    <span class="text-lg fab fa-github"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
            </main>
        </body>
        <!-- plugin for scrollbar  -->
        <script src="/auth/js/plugins/perfect-scrollbar.min.js" async></script>
        <!-- main script file  -->
        <script src="/auth/js/argon-dashboard-tailwind.js?v=1.0.1" async></script>

        </html>