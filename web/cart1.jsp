<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="<c:url value="/front-end/style.css"/>">
        <title>Shopping Cart</title>
    </head>
    <body>
        <div class="scrolling-box">
            <form action="GundamController/login" method="post">
                <div class="log-in-modal hidden1">
                    <div class="modal-login">
                        <button class="close-modal-login">&times;</button>
                        <div class="left-modal_login">
                            <div>
                                <div class="big-text-log-in">
                                    gundam
                                </div>
                                <div class="sign-in">
                                    Sign In to your account
                                </div>
                            </div>
                            <div class="form-container">
                                <div class="login-box">
                                    <?xml version="1.0" standalone="no"?>
                                    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
                                        "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
                                    <svg class="login-svg" version="1.0" xmlns="http://www.w3.org/2000/svg"
                                         width="24.000000pt" height="24.000000pt" viewBox="0 0 24.000000 24.000000"
                                         preserveAspectRatio="xMidYMid meet">

                                    <g transform="translate(0.000000,24.000000) scale(0.100000,-0.100000)"
                                       stroke="none">
                                    <path d="M24 187 c-3 -8 -4 -43 -2 -78 l3 -64 95 0 95 0 0 75 0 75 -93 3 c-72
                                          2 -94 0 -98 -11z m176 -12 c0 -3 -18 -16 -40 -30 l-40 -25 -40 25 c-22 14 -40
                                          27 -40 30 0 3 36 5 80 5 44 0 80 -2 80 -5z m-40 -50 l40 25 0 -45 0 -45 -80 0
                                          -80 0 0 45 0 45 40 -25 40 -25 40 25z"/>
                                    </g>
                                    </svg>

                                    <input type="text" placeholder="Your Account" name="userId" class="login-box-placeholder">
                                </div>

                                <div class="login-box">
                                    <?xml version="1.0"?><svg class="login-svg"  xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" width="24px" height="24px">    <path d="M 12 1 C 8.6761905 1 6 3.6761905 6 7 L 6 8 C 4.9069372 8 4 8.9069372 4 10 L 4 20 C 4 21.093063 4.9069372 22 6 22 L 18 22 C 19.093063 22 20 21.093063 20 20 L 20 10 C 20 8.9069372 19.093063 8 18 8 L 18 7 C 18 3.6761905 15.32381 1 12 1 z M 12 3 C 14.27619 3 16 4.7238095 16 7 L 16 8 L 8 8 L 8 7 C 8 4.7238095 9.7238095 3 12 3 z M 6 10 L 18 10 L 18 20 L 6 20 L 6 10 z M 12 13 C 10.9 13 10 13.9 10 15 C 10 16.1 10.9 17 12 17 C 13.1 17 14 16.1 14 15 C 14 13.9 13.1 13 12 13 z"/></svg>
                                    <input type="password" placeholder="Your Password" name="password" class="login-box-placeholder">
                                </div>
                            </div>
                            <div class="agree">
                                By signing in, you confirmed that you have read
                                and accepted our <a href="term.html" target="_blank">term and services</a>
                            </div>
                            <button class="item__button btn-color" type="submit">Sign in</button>
                            <a class="forgot" href="term.html" target="_blank">Forgot Password?</a>
                        </div>
                    </div>
                    <div class="overlay-login hidden1"></div>
                </div>
            </form>
            <header>    
                <section class="header" id="1">
                    <div class="header-container">
                        <div class="search-box">
                            <svg class="search" fill="#000000" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 30 30" width="30px" height="30px"><path d="M 13 3 C 7.4889971 3 3 7.4889971 3 13 C 3 18.511003 7.4889971 23 13 23 C 15.396508 23 17.597385 22.148986 19.322266 20.736328 L 25.292969 26.707031 A 1.0001 1.0001 0 1 0 26.707031 25.292969 L 20.736328 19.322266 C 22.148986 17.597385 23 15.396508 23 13 C 23 7.4889971 18.511003 3 13 3 z M 13 5 C 17.430123 5 21 8.5698774 21 13 C 21 17.430123 17.430123 21 13 21 C 8.5698774 21 5 17.430123 5 13 C 5 8.5698774 8.5698774 5 13 5 z"/></svg>
                            <input type="text" placeholder="Search.." class="search-box-placeholder">
                        </div>

                        <ul class="list">
                            <li class="header-item">
                                <a href="http://localhost:8084/GundamShop/">Home</a>
                            </li>
                            <li class="header-item"><a href="http://localhost:8084/GundamShop/#2">Shop</a></li>
                            <li class="header-item"><a href="http://localhost:8084/GundamShop/#3">About</a></li>
                            <li class="header-item"><a href="http://localhost:8084/GundamShop/#4">Contact</a></li>
                        </ul>

                        <div class="right-panel">
                            <div class="log-in">
                                <c:if test="${empty user}">
                                    <svg width="24px" height="24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="12" cy="7" r="5" stroke="black" stroke-width="0"/>
                                    <path d="M17 14H17.3517C18.8646 14 20.1408 15.1266 20.3285 16.6279L20.719 19.7519C20.8682 20.9456 19.9374 22 18.7344 22H5.26556C4.06257 22 3.1318 20.9456 3.28101 19.7519L3.67151 16.6279C3.85917 15.1266 5.13538 14 6.64835 14H7" stroke="black" stroke-width="0" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                    <span>Log In</span>
                                </c:if>
                                <c:if test="${not empty user}">
                                    <a href="GundamController/logout" style="text-decoration: none">${user.fullName}</a> 
                                </c:if>
                            </div>

                            <div class="shopping-cart">
                                <?xml version="1.0" encoding="iso-8859-1"?>
                                <!-- Generator: Adobe Illustrator 19.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                     viewBox="0 0 491.123 491.123" style="enable-background:new 0 0 491.123 491.123;" xml:space="preserve">
                                <g>
                                <g>
                                <path d="M470.223,0.561h-89.7c-9.4,0-16.7,6.3-19.8,14.6l-83.4,263.8h-178.3l-50-147h187.7c11.5,0,20.9-9.4,20.9-20.9
                                      s-9.4-20.9-20.9-20.9h-215.9c-18.5,0.9-23.2,18-19.8,26.1l63.6,189.7c3.1,8.3,11.5,13.6,19.8,13.6h207.5c9.4,0,17.7-5.2,19.8-13.6
                                      l83.4-263.8h75.1c11.5,0,20.9-9.4,20.9-20.9S481.623,0.561,470.223,0.561z"/>
                                <path d="M103.223,357.161c-36.5,0-66.7,30.2-66.7,66.7s30.2,66.7,66.7,66.7s66.7-30.2,66.7-66.7S139.723,357.161,103.223,357.161z
                                      M128.223,424.861c0,14.6-11.5,26.1-25,26.1c-13.6,0-25-11.5-25-26.1s11.5-26.1,25-26.1
                                      C117.823,398.861,129.323,410.261,128.223,424.861z"/>
                                <path d="M265.823,357.161c-36.5,0-66.7,30.2-66.7,66.7s30.2,66.7,66.7,66.7c37.5,0,66.7-30.2,66.7-66.7
                                      C332.623,387.361,302.323,357.161,265.823,357.161z M290.923,424.861c0,14.6-11.5,26.1-25,26.1c-13.5,0-25-11.5-25-26.1
                                      s11.5-26.1,25-26.1C280.423,398.861,291.923,410.261,290.923,424.861z"/>
                                </g></g><g></g><g></g><g></g<g></g></g><g></g><g></g><g></g></g><g></g><g><g><g></g><g></g><g></g><g></g></svg>
                            </div>

                        </div>
                    </div>
                </section>
            </header>
            <section class="payment">
                <div class="payment-container">
                    <div class="left-payment">
                        <div class="payment-tag left">
                            <p>  My Cart </p> <p><a href="GundamController/clearcart" class="clear-cart"/>Clear Cart</a></p> 
                        </div>
                        <c:forEach var="gunpla" items="${cart.list}">
                            <form action="<c:url value="GundamController/delcart"/>">
                                <div class="product-payment">
                                    <div class="left-item">
                                        <img src="<c:url value="/images/${gunpla.imgPath}"/>" alt="gundam 1" class="item__img">
                                        <div class="text-price">
                                            <p class="name-price">${gunpla.name}</p>
                                            <p class="price-text">$${gunpla.price}x${gunpla.quantity}</p>
                                        </div>
                                    </div>
                                    <div class="right-item">
                                        <p>${gunpla.price * gunpla.quantity}</p>
                                        <c:set var="total" value="${total + gunpla.price * gunpla.quantity}"/>
                                        <input name="id" value="${gunpla.id}" type="hidden"/>
                                        <input name="cart" value="${cart.list}" type="hidden"/>
                                        <button class="close-item" >&times;</button>
                                    </div>
                                </div>
                            </form>
                        </c:forEach> 

                    </div>
                    <div class="right-payment">
                        <div class="payment-tag">
                            Order Summary
                        </div>
                        <div class="subtotal">
                            <div class="sub-total">
                                <p>Sub Total</p>
                                <p>${total}$</p>
                            </div> 
                            <div class="estimate-shipping">
                                <p>Estimate Shipping</p>  
                                <p>100$</p>  
                            </div> 
                        </div>
                        <div class="total-tag">
                            <p>Total</p>
                            <p>${total +100}$</p>
                        </div>
                        <!--<a href="GundamController/checkout" target="_blank" class="checkout-btn"><button class="item__button btn-color ">Checkout</button></a>-->
                        
                        <div class="log-in">
                            <c:if test="${empty user}">
                                <button class="item__button btn-color ">Checkout</button>
                            </c:if>
                            <c:if test="${not empty user}">
                                <a href="GundamController/checkout" target="_blank" class="checkout-btn"><button class="item__button btn-color ">Checkout</button></a>
                            </c:if>
                        </div>

                        <div class="secure-text">
                            <?xml version="1.0"?><svg fill="#000" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" width="24px" height="24px">    <path d="M 12 1 C 8.6761905 1 6 3.6761905 6 7 L 6 8 C 4.9069372 8 4 8.9069372 4 10 L 4 20 C 4 21.093063 4.9069372 22 6 22 L 18 22 C 19.093063 22 20 21.093063 20 20 L 20 10 C 20 8.9069372 19.093063 8 18 8 L 18 7 C 18 3.6761905 15.32381 1 12 1 z M 12 3 C 14.27619 3 16 4.7238095 16 7 L 16 8 L 8 8 L 8 7 C 8 4.7238095 9.7238095 3 12 3 z M 6 10 L 18 10 L 18 20 L 6 20 L 6 10 z M 12 13 C 10.9 13 10 13.9 10 15 C 10 16.1 10.9 17 12 17 C 13.1 17 14 16.1 14 15 C 14 13.9 13.1 13 12 13 z"/></svg>
                            Secured Checkout
                        </div>
                    </div>
                </div>
            </section>
            <section class="footer">
                <div class="top">
                    <a href="#1" >
                        <?xml version="1.0" standalone="no"?>
                        <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
                            "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
                        <svg class="up-svg" version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="512.000000pt" height="512.000000pt" viewBox="0 0 512.000000 512.000000"
                             preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
                           stroke="none">
                        <path d="M2440 4034 c-48 -22 -209 -179 -1226 -1197 -1123 -1123 -1173 -1174
                              -1193 -1230 -27 -73 -27 -131 1 -204 17 -48 40 -77 137 -174 143 -144 177
                              -163 286 -164 58 0 91 5 120 19 27 13 355 333 1018 995 l977 976 978 -977
                              c537 -537 993 -984 1012 -994 19 -9 67 -19 106 -22 110 -7 160 20 305 166 97
                              98 119 127 137 175 27 72 28 131 2 199 -18 49 -117 151 -1202 1235 -924 923
                              -1193 1187 -1228 1202 -66 30 -159 28 -230 -5z"/>
                        </g>
                        </svg>
                        <p>Top</p>
                    </a>
                </div>

                <div class="faq">
                    <p>FAQ</p>
                    <p>Shipping and Return</p>
                    <p>Term and Condition</p>
                </div>
                <div class="logo-footer">
                    <a href="https://www.instagram.com/_.haianh._/" target="_blank" >
                        <?xml version="1.0"?><svg class="logo-svg" fill="#fff" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" width="24px" height="24px">    <path d="M 8 3 C 5.243 3 3 5.243 3 8 L 3 16 C 3 18.757 5.243 21 8 21 L 16 21 C 18.757 21 21 18.757 21 16 L 21 8 C 21 5.243 18.757 3 16 3 L 8 3 z M 8 5 L 16 5 C 17.654 5 19 6.346 19 8 L 19 16 C 19 17.654 17.654 19 16 19 L 8 19 C 6.346 19 5 17.654 5 16 L 5 8 C 5 6.346 6.346 5 8 5 z M 17 6 A 1 1 0 0 0 16 7 A 1 1 0 0 0 17 8 A 1 1 0 0 0 18 7 A 1 1 0 0 0 17 6 z M 12 7 C 9.243 7 7 9.243 7 12 C 7 14.757 9.243 17 12 17 C 14.757 17 17 14.757 17 12 C 17 9.243 14.757 7 12 7 z M 12 9 C 13.654 9 15 10.346 15 12 C 15 13.654 13.654 15 12 15 C 10.346 15 9 13.654 9 12 C 9 10.346 10.346 9 12 9 z"/></svg>
                    </a>
                    <a href="https://www.youtube.com/watch?v=AYQCmVSVVDg" target="_blank">
                        <?xml version="1.0" standalone="no"?>
                        <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
                            "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
                        <svg class="logo-svg" version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="512.000000pt" height="512.000000pt" viewBox="0 0 512.000000 512.000000"
                             preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
                           fill="#fff" stroke="none">
                        <path d="M2412 5110 c-721 -53 -1284 -351 -1622 -859 -381 -571 -409 -1339
                              -67 -1851 72 -108 214 -244 322 -307 125 -75 175 -81 196 -26 19 48 99 367 99
                              394 0 16 -21 54 -56 100 -258 344 -282 831 -61 1263 253 494 778 778 1392 753
                              246 -11 428 -53 611 -142 353 -172 581 -486 660 -910 23 -122 26 -428 6 -545
                              -98 -554 -400 -957 -797 -1064 -94 -26 -257 -31 -339 -12 -244 58 -398 267
                              -366 497 10 67 62 247 160 554 103 322 132 482 112 612 -24 152 -98 258 -222
                              317 -60 29 -72 31 -170 30 -122 -1 -186 -20 -287 -86 -145 -93 -247 -255 -288
                              -453 -21 -102 -21 -312 -1 -417 8 -43 29 -118 46 -167 l30 -89 -195 -788
                              c-111 -453 -199 -827 -205 -879 -13 -118 -13 -579 1 -725 17 -192 48 -310 79
                              -310 26 0 281 413 390 630 105 210 130 280 246 704 57 209 108 389 112 398 6
                              15 14 8 49 -37 132 -171 432 -295 711 -295 618 1 1174 367 1462 964 230 477
                              279 1048 129 1498 -275 821 -1132 1321 -2137 1248z"/>
                        </g>
                        </svg></a>
                    <a href="https://www.facebook.com/hainnnnnnnnn/" target="_blank">
                        <?xml version="1.0"?><svg class="logo-svg" fill="#fff" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 30 30" width="30px" height="30px">    <path d="M15,3C8.373,3,3,8.373,3,15c0,6.016,4.432,10.984,10.206,11.852V18.18h-2.969v-3.154h2.969v-2.099c0-3.475,1.693-5,4.581-5 c1.383,0,2.115,0.103,2.461,0.149v2.753h-1.97c-1.226,0-1.654,1.163-1.654,2.473v1.724h3.593L19.73,18.18h-3.106v8.697 C22.481,26.083,27,21.075,27,15C27,8.373,21.627,3,15,3z"/></svg>
                    </a>
                </div>
                <div class="copyright">
                    © 2022 by HaiCauMuoi. Proudly created with HTML5 and CSS3. Designed by Wix
                </div>
            </section>
        </div>

        <script src="../front-end/script.js"></script>
    </body>
</html>