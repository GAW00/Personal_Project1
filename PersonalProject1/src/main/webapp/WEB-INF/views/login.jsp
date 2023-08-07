<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>정모고</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="정모고" name="description" />
<meta content="홍대리" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link rel="shortcut icon" href="/assets/images/favicon.ico">

<!-- App css -->
<link href="/assets/css/bootstrap-modern.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
<link href="/assets/css/app-modern.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />


<!-- Alert & Toast css -->
<link href="/assets/libs/jquery-toast-plugin/jquery.toast.min.css" rel="stylesheet" type="text/css" />
<link href="/assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />


<!-- icons -->
<link href="/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body class="loading auth-fluid-pages pb-0">

        <div class="auth-fluid">
            <!-- Auth fluid right content -->
            <div class="auth-fluid-right">
                <div class="auth-user-testimonial">
                    <h3 class="mb-3 text-white">계모임 관리! 이제는 간편하게!</h3>
                    <p class="lead font-weight-normal"><i class="mdi mdi-format-quote-open"></i>개 쩌는 플랫폼 두두등장!<i class="mdi mdi-format-quote-close"></i> - Elon Musk
                    </p>
                    <h5 class="text-white"> </h5>
                </div> <!-- end auth-user-testimonial-->
            </div>
            <!-- end Auth fluid right content -->

            <!--Auth fluid left content -->
            <div class="auth-fluid-form-box">
                <div class="align-items-center d-flex h-100">
                    <div class="card-body">

                        <!-- Logo -->
                        <div class="auth-brand text-center text-lg-left">
                            <div class="auth-logo">
                                <a href="/" class="logo text-center">
                                    <img src="/assets/images/jungmogo-logo.png" alt="" height="100">
                                </a>
                            </div>
                        </div>

                        <!-- title-->
                        <h4 class="mt-0">로그인</h4>
                        <p class="text-muted mb-4">정모고는 로그인이 필요한 서비스 입니다.</p>

                        <form name="loginForm" action="#">
                            <div class="form-group mb-3">
                                <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&amp;client_id=e2797c09cb7359e7c5a8ecc3782fa3ce&amp;redirect_uri=http%3A%2F%2Fjungmogo.secuware.co.kr%2Fauth%2Fkakao%2Fcallback.do"  id="btnLoginKakao" onclick="addButtonLoader('#'+this.id);"  class="btn btn-lg btn-warning btn-block  waves-effect waves-light mb-2">
                                    <i class="mdi mdi-chat float-left mr-1"></i>
                                    카카오 아이디로 로그인
                                </a>
                                <a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&amp;client_id=FeBEbg0jQgI9GDN4Qhyn&amp;redirect_uri=http%3A%2F%2Fjungmogo.secuware.co.kr%2Fauth%2Fnaver%2Fcallback.do&amp;scope=profile"  id="btnLoginNaver"  onclick="addButtonLoader('#'+this.id);"   class="btn btn-lg btn-success btn-block  waves-effect waves-light mb-2">
                                    <i class="float-left mr-1 "><b>N</b></i>
                                    네이버 아이디로 로그인
                                </a>
                                <a href="javascript:alert2('HTTPS 아니라고 안해줌ㅜㅜ',function(){},'😭');" class="btn btn-lg btn-purple btn-block  waves-effect waves-light">
                                   <i class="mdi mdi-google float-left mr-1"></i>
                                    구글 아이디로 로그인
                                </a>

                                 <a href="/demoLogin" class="mt-5 btn btn-lg btn-dark btn-block  waves-effect waves-light mb-2">
                                    <i class="mdi mdi-rocket-outline float-left mr-1"></i>
                                    로그인 없이 체험해보기
                                </a>
                                
                            </div>
                        </form>

                        <!-- Footer-->
                        <footer class="footer footer-alt">
                            <p class="text-muted">카피Right by <a href="tel:01044495334" class="text-primary"><b>으어어</b></a>. All rights reserved. </p>
                        </footer>

                    </div> <!-- end .card-body -->
                </div> <!-- end .align-items-center.d-flex.h-100-->
            </div>
            <!-- end auth-fluid-form-box-->
        </div>
        <!-- end auth-fluid-->


        <!-- Vendor js -->
        <script src="/assets/js/vendor.min.js"></script>

        <!-- Util js -->
        <script src="/assets/js/util.js"></script>

        <!-- App js -->
        <script src="/assets/js/app.min.js"></script>

         <!-- Alert & toast -->
        <script src="/assets/libs/jquery-toast-plugin/jquery.toast.min.js"></script>
        <script src="/assets/libs/sweetalert2/sweetalert2.min.js"></script>



    </body>
</html>