<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
        <title>사이트이름</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="세션에서 이름 받아" name="description" />
        <meta content="세션에서 작가" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">

		<!-- Alert & Toast css -->
        <link href="resources/libs/jquery-toast-plugin/jquery.toast.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <link href="resources/css/bootstrap-modern.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
        <link href="resources/css/app-modern.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

        <!-- icons -->
        <link href="resources/css/icons.min.css" rel="stylesheet" type="text/css" />

		<!-- Vendor js -->
	    <script src="resources/js/vendor.min.js"></script>
<title>Insert title here</title>
</head>
<body class="loading" data-layout-mode="horizontal" data-layout='{"mode": "light", "width": "boxed", "menuPosition": "fixed", "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>
    <!-- Begin Wrap -->
    <div id="wrapper" style="min-height:100vh; max-width: 600px;" >

		





<style>

    @media (min-width: 490px) {
      .myinfo-modal-size {
            min-width:490px;
        }
    }
    @media (max-width: 490px) {
      .myinfo-modal-size {
            min-width:100vw;
        }
    }
</style>

<div class="row">
    <div class="col-12 ">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">
                    <div class="dropdown float-right">
                       <a class="dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="javascript:void(0);"  aria-haspopup="false" aria-expanded="false">
                            <img src="https://phinf.pstatic.net/contact/20190802_29/1564722353733B34rk_GIF/73f9.gif" alt="user-image" class="rounded-circle">
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown " >
                           

                            <a href="javascript:void(0);" class="dropdown-item notify-item" data-toggle="modal" data-target="#myInfo-modal">
                                <i class="ri-account-circle-line"></i>
                                <span>내 정보</span>
                            </a>

                            <div class="dropdown-divider"></div>

                            <!-- item-->
                            <a href="/logout" class="dropdown-item notify-item">
                                <i class="ri-logout-box-line"></i>
                                <span>로그아웃</span>
                            </a>

                        </div>
                    </div>

                    <p class="pt-1"><strong class="font-weight-bold">세션에서 이름 받기</strong> 님, 안녕하세요! </p>

                </h5>

                <hr />
                <div class="mt-1">
                      <div class="float-right">
                        <a href="javascript:void(0)" class="btn btn-md btn-danger" data-toggle="modal" data-target="#modal-club-add">
                             <i class="mdi mdi-plus"></i> 개설
                        </a>
                    </div>

                    
                    <ul class="nav nav-pills navtab-bg">
                        <li class="nav-item">
                            <a href="/club" class="nav-link m-0   active ">
                                내 계모임
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/find" class="nav-link m-0  ">
                               계모임 찾기
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>

    


</div>


<!-- club add modal -->
<div id="modal-club-add" class="modal fade" tabindex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title font-weight-bold">새 계모임 만들기</h5>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body px-3 mb-2">
                <form class="px-3" action="">
                    <div class="form-group row">
                        <label class="font-weight-bold col-3 col-form-label" for="cname">계모임 이름<span class="text-danger">*</span></label>
                        <div class="col-9">
                            <input type="text" class="form-control mb-1" id="cname" placeholder="계모임 이름을 입력하세요." maxlength="20" required>
                        </div>
                    </div>

                    <hr />

                    <div class="row">
                        <div class="col-12 text-right">
                            <button type="button" class="mr-1 btn btn-light" data-dismiss="modal">취소</button>
                            <button id="btnAddClub" class="btn btn-primary" type="button">계모임 개설</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div><!-- // club add modal -->

<!-- Right modal content -->
<div id="myInfo-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" >
        <div class="modal-dialog modal-right myinfo-modal-size" style="justify-content: unset;">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                   <div class="card">
                        <div class="card-body">
                            <h4 class="header-title">내 정보</h4>
                            <p class="sub-header"> </p>
                            <hr />
                            <div class="row">
                                <div class="col-12">
                                    <div class="p-2">
                                        <form class="form-horizontal" role="form">

                                            <div class="form-group row">
                                                <label class="col-3" for="myInfo-userName">이름</label>
                                                <div class="col-9">
                                                   <a href="javascript:void(0);" id="myInfo-userName" data-type="text" data-pk="1" data-placeholder="이름을 입력하세요">세션에서 이름 받기</a>
                                                </div>
                                            </div>


                                             <div class="form-group row">
                                                <label class="col-3" for="myInfo-userPhone">휴대전화</label>
                                                <div class="col-9">
                                                   <a href="javascript:void(0);" id="myInfo-userPhone" data-type="tel" data-pk="1" data-placeholder="연락처를 입력하세요">세션에서 전화번호 받기</a>
                                                </div>
                                            </div>


                                             <div class="form-group row">
                                                <label class="col-3">이메일</label>
                                                <div class="col-9">
                                                  세션에서 메일 받기
                                                </div>
                                            </div>


                                            <div class="form-group row">
                                                <label class="col-3">생일</label>
                                                <label class="col-9">세션에서 생일 받기</label>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-3">권한</label>
                                                <label class="col-9">
                                                    
                                                        일반사용자
                                                        
                                                    
                                                </label>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-3">가입일자</label>
                                                <label class="col-9">
                                                    2021년 03월 11일 05:02
                                                </label>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-3">마지막 접속</label>
                                                <label class="col-9">
                                                    2023년 07월 24일 02:28
                                                </label>
                                            </div>

                                            <hr />

                                            <script>
                                                $(function() {
                                                    $.fn.editableform.buttons = '<button type="submit" class="btn btn-primary editable-submit btn-sm waves-effect waves-light"><i class="mdi mdi-check"></i></button><button type="button" class="btn btn-danger editable-cancel btn-sm waves-effect"><i class="mdi mdi-close"></i></button>',
                                                    $.fn.editableform.defaults.mode = 'inline';
                                                    $.fn.editableform.defaults.template = '<form class="form-inline editableform"><div class="control-group"><div><div class="editable-input"></div><div class="editable-buttons"></div></div><div class="editable-error-block"></div></div></form>',

                                                    $("#myInfo-userName").editable({
                                                        validate: function(e) {
                                                            if ("" == $.trim(e))
                                                                return "이름을 입력하세요";

                                                            let sendData = { "username"  : e };
                                                            $.ajax({
                                                                url : "/modifyMyInfo.json",
                                                                type: 'POST',
                                                                dataType: "json",
                                                                data: $.param( sendData ),
                                                                success : function(data) {
                                                                    if(data.result){
                                                                         $.toast({
                                                                           heading: "<h5 class='text-white'>이름 변경</h5>",
                                                                           text : "이름 변경 완료",
                                                                           position: "top-right",
                                                                           loaderBg: "#2941b3",
                                                                           sticky: true
                                                                       });
                                                                    } else {
                                                                        alert2(data.resultMsg,function(){},"🤷🏻‍♂️");
                                                                        return false;
                                                                    }
                                                                },
                                                                error : function(e) {
                                                                    alert2('일시적인 네트워크 오류입니다.<br>문제가 지속 될 시 관리자에게 문의하세요.',function(){},"😿️");
                                                                    return false;
                                                                }
                                                            });

                                                        },
                                                        mode: "inline",
                                                        inputclass: "form-control-sm form-control"
                                                    }),
                                                    $("#myInfo-userPhone").editable({
                                                        validate: function(e) {
                                                            if ("" == $.trim(e))
                                                                return "연락처를 입력하세요";

                                                            if ($.trim(e).length != 13)
                                                                return "번호가 올바르지 않습니다";

                                                            let sendData = { "phone"  : e };
                                                            $.ajax({
                                                                url : "/modifyMyInfo.json",
                                                                type: 'POST',
                                                                dataType: "json",
                                                                data: $.param( sendData ),
                                                                success : function(data) {
                                                                    if(data.result){
                                                                        $.toast({
                                                                           heading: "<h5 class='text-white'>연락처 변경</h5>",
                                                                           text : "연락처 변경 완료",
                                                                           position: "top-right",
                                                                           loaderBg: "#2941b3",
                                                                           sticky: true
                                                                       });
                                                                    } else {
                                                                        alert2(data.resultMsg,function(){},"🤷🏻‍♂️");
                                                                        return false;
                                                                    }
                                                                },
                                                                error : function(e) {
                                                                    alert2('일시적인 네트워크 오류입니다.<br>문제가 지속 될 시 관리자에게 문의하세요.',function(){},"😿️");
                                                                    return false;
                                                                }
                                                            });
                                                        },
                                                        mode: "inline",
                                                        inputclass: "form-control-sm form-control mask-tel"
                                                    });
                                                });

                                                $(document).on("focus", ".mask-tel", function () {
                                                    $(this).mask("999-9999-9999");
                                                });

                                            </script>
                                        </form>
                                    </div>
                                </div>

                            </div>
                            <!-- end row -->
                        </div>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->



<script>
    $(document).ready(function(){
		const btnAddClub = $("#btnAddClub");

		// 계모임 생성
		$(btnAddClub).on("click", function(){

			let btnName = "#btnAddClub";
            addButtonLoader(btnName);

		    let cname = $("#cname");

            if(isEmpty(cname.val())){
                alert2("계모임 이름을 입력하세요",function(){},"🤷🏻‍♂️");
                cname.focus();
                removeButtonLoader(btnName);
                return false;
            }

            let sendData = { "cname"  : cname.val() };

            $.ajax({
                url : "/addClub.json",
                type: 'POST',
                dataType: "json",
                data: $.param( sendData ),
                success : function(data) {
                    if(data.result){
                        alert2("생성되었습니다", function(){
                            location.href="/club";
                        },"🙆🏻‍♂️️")
                    } else {
                        alert2(data.resultMsg,function(){},"🤷🏻‍♂️");
                        removeButtonLoader(btnName);
                    }
                },
                error : function(e) {
                    console.log("ERROR: ", e);
                    alert2('일시적인 네트워크 오류입니다.<br>문제가 지속 될 시 관리자에게 문의하세요.',function(){},"😿️");
                    removeButtonLoader(btnName);
                }
            });
		});
    });
</script>

		<div id="contentWrap">
			





<style>
.club-item {
    cursor:pointer !important;
}
.club-item:hover, .club-item:active {
    background-color:#526dee !important;
}

.club-item:hover .club-item-text {
    color:#fff !important;
}

</style>
<div class="row">
    <c:forEach items="${clublist}" var="list">
        <div class="col-12">
            <div class="card mx-3 ribbon-box club-item" onclick="location.href='/club/18'">
                <div class="card-body">
                    <div class="ribbon ribbon-light text-dark float-right" data-toggle="tooltip" data-placement="bottom" title=""
                         data-original-title="김명선<BR/>곽체험<BR/>김체험<BR/>윤체험<BR/>이체험<BR/>서체험<BR/>성체험<BR/>장체험<BR/>종현<BR/>최체험<BR/>">
                        <i class="mdi mdi-face mr-1"></i> 10명
                    </div>
                    <h5 class="m-0 mb-1 font-weight-bold club-item-text">${list.clubname}</h5>
                    <h4 class="my-2 py-1 club-item-text"><span class="font-weight-bolder text-primary club-item-text" data-plugin="counterup">${list.leftover}</span> 원</h4>
                    <div class="m-0 club-item-text">
                        <span style="font-size:14px;">🤴</span> ${list.chairman}
                        <span class="float-right text-muted club-item-text">
                             2021.03.11 가입
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach> 
       
    
</div>



<script>
    $('.ribbon').tooltip({html: true})
    $(document).ready(function(){

    });
</script>
		</div>
	</div>
	<!-- //Begin Wrap -->



	<!-- App js -->
	<script src="resources/js/app.min.js"></script>


    <!-- Form js -->
	<script src="resources/libs/x-editable/bootstrap-editable/js/bootstrap-editable.min.js"></script>
	<script src="resources/libs/jquery-mask-plugin/jquery.mask.min.js"></script>

	<!-- Alert & toast -->
	<script src="resources/libs/jquery-toast-plugin/jquery.toast.min.js"></script>
	<script src="resources/libs/sweetalert2/sweetalert2.min.js"></script>

	<!-- Util js -->
    <script src="resources/libs/moment/min/moment.min.js"></script>
    <script src="resources/libs/jquery.scrollto/jquery.scrollTo.min.js"></script>
	<script src="resources/js/util.js"></script>


	<!-- Cookie js -->
	<script src="resources/libs/jquery-cookie/jquery.cookie-1.4.1.min.js"></script>

</body>
</html>